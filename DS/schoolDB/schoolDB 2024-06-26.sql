# attendance 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddAttendance;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddAttendance()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT DEFAULT 0;
    DECLARE total_days INT DEFAULT 61; -- 2024-05-01부터 2024-06-30까지 총 61일
    DECLARE total_students INT DEFAULT 30; -- 학생 수를 30명으로 고정
    DECLARE attendance_no_prefix VARCHAR(3) DEFAULT 'G';
    DECLARE student_no_prefix VARCHAR(2) DEFAULT 'st';
    DECLARE attendance_no VARCHAR(50);
    DECLARE student_no VARCHAR(50);
    DECLARE attendance_date DATE;
    DECLARE attendance_status VARCHAR(50) DEFAULT '';
    DECLARE total_entries INT DEFAULT total_days * total_students; -- 총 출결 항목 수
    DECLARE current_entry INT DEFAULT 1;

    WHILE current_entry <= total_entries DO
        -- 출결 번호 생성 (G00001, G00002, ...)
        SET attendance_no = CONCAT(attendance_no_prefix, LPAD(current_entry, 5, '0'));
        -- 학생 번호 생성 (st001, st002, ...)
        SET student_no = CONCAT(student_no_prefix, LPAD(((current_entry - 1) % total_students) + 1, 3, '0'));
        -- 출결 날짜 생성 (2024-05-01부터 61일간 반복)
        SET attendance_date = DATE_ADD('2024-05-01', INTERVAL (current_entry - 1) DIV total_students DAY);
        
        -- 데이터 삽입
        INSERT INTO attendance (attendance_no, st_no, attendance_date, attendance_status)
        VALUES (attendance_no, student_no, attendance_date, attendance_status);
        
        -- 현재 항목 증가
        SET current_entry = current_entry + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddAttendance();

select * from attendance;

# grade 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddGrade;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddGrade()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT DEFAULT 1;
    DECLARE k INT DEFAULT 1;
    DECLARE total_students INT DEFAULT 30; -- 학생 수
    DECLARE total_subjects INT DEFAULT 12; -- 과목 수
    DECLARE total_semesters INT DEFAULT 2; -- 총 학기 수
    DECLARE grade_no INT DEFAULT 1;
    DECLARE st_no VARCHAR(50);
    DECLARE sub_no VARCHAR(50);
    DECLARE semester VARCHAR(50);
    DECLARE score INT;

    WHILE i <= total_students DO
        SET j = 1;
        
        IF i <= 10 THEN
            SET total_semesters = 2; -- st001 ~ st010은 총 2학기 (3-1, 3-2)
        ELSEIF i <= 20 THEN
            SET total_semesters = 2; -- st011 ~ st020은 총 2학기 (2-1, 2-2)
        ELSE
            SET total_semesters = 2; -- st021 ~ st030은 총 2학기 (1-1, 1-2)
        END IF;

        WHILE j <= total_subjects DO
            SET k = 1;
            WHILE k <= total_semesters DO
                SET st_no = CONCAT('st', LPAD(i, 3, '0'));
                
                -- 과목 번호에 따라 과목명 지정
                CASE j
                    WHEN 1 THEN SET sub_no = 'kor';
                    WHEN 2 THEN SET sub_no = 'eng';
                    WHEN 3 THEN SET sub_no = 'mat';
                    WHEN 4 THEN SET sub_no = 'soc';
                    WHEN 5 THEN SET sub_no = 'sci';
                    WHEN 6 THEN SET sub_no = 'his';
                    WHEN 7 THEN SET sub_no = 'eth';
                    WHEN 8 THEN SET sub_no = 'phy';
                    WHEN 9 THEN SET sub_no = 'art';
                    WHEN 10 THEN SET sub_no = 'tec';
                    WHEN 11 THEN SET sub_no = 'inf';
                    WHEN 12 THEN SET sub_no = 'mus';
                    ELSE SET sub_no = 'oth';
                END CASE;
                
                IF i <= 10 THEN
                    SET semester = CONCAT('3학년', IF(k = 1, '1학기', '2학기'));
                ELSEIF i <= 20 THEN
                    SET semester = CONCAT('2학년', IF(k = 1, '1학기', '2학기'));
                ELSE
                    SET semester = CONCAT('1학년', IF(k = 1, '1학기', '2학기'));
                END IF;
                
                SET score = FLOOR(RAND() * 101); -- 임의의 성적 (0에서 100 사이)

                INSERT INTO grade (grade_no, st_no, sub_no, semester, score)
                VALUES (grade_no, st_no, sub_no, semester, score);

                SET grade_no = grade_no + 1;
                SET k = k + 1;
            END WHILE;
            SET j = j + 1;
        END WHILE;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddGrade();

select * from grade;

delete from grade;

# student 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddStudents;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddStudents()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE st_no VARCHAR(50);
    DECLARE st_name VARCHAR(50);
    DECLARE st_birth DATE;
    DECLARE st_gender VARCHAR(10);
    DECLARE st_addr VARCHAR(50);
    DECLARE st_phone VARCHAR(50);
    DECLARE st_parent_phone VARCHAR(50);
    DECLARE st_grade VARCHAR(50); -- 변경된 부분: grade -> st_grade
    DECLARE tc_no VARCHAR(50);
    DECLARE st_status VARCHAR(50);
    DECLARE rand_month INT;
    DECLARE rand_day INT;

    WHILE i <= 30 DO
        SET st_no = CONCAT('st', LPAD(i, 3, '0'));
        SET st_name = CONCAT('학생', LPAD(i, 2, '0'));
        
        -- 년도 고정, 월과 일을 랜덤으로 설정
        SET rand_month = FLOOR(1 + RAND() * 12);
        SET rand_day = FLOOR(1 + RAND() * 28); -- 간단하게 최대 28일로 설정

        IF i <= 10 THEN
            SET st_birth = CONCAT('2010-', LPAD(rand_month, 2, '0'), '-', LPAD(rand_day, 2, '0'));
        ELSEIF i <= 20 THEN
            SET st_birth = CONCAT('2011-', LPAD(rand_month, 2, '0'), '-', LPAD(rand_day, 2, '0'));
        ELSE
            SET st_birth = CONCAT('2012-', LPAD(rand_month, 2, '0'), '-', LPAD(rand_day, 2, '0'));
        END IF;
        
        SET st_gender = IF(RAND() < 0.5, '남자', '여자');
        SET st_addr = CONCAT('주소', LPAD(i, 2, '0'));
        SET st_phone = CONCAT('010-', LPAD(FLOOR(RAND() * 100000000), 4, '0'), '-', LPAD(FLOOR(RAND() * 10000), 4, '0'));
        SET st_parent_phone = CONCAT('010-', LPAD(FLOOR(RAND() * 100000000), 4, '0'), '-', LPAD(FLOOR(RAND() * 10000), 4, '0'));
        
        IF i <= 10 THEN
            SET st_grade = '3학년'; -- 변경된 부분: grade -> st_grade
        ELSEIF i <= 20 THEN
            SET st_grade = '2학년'; -- 변경된 부분: grade -> st_grade
        ELSE
            SET st_grade = '1학년'; -- 변경된 부분: grade -> st_grade
        END IF;
        
        SET tc_no = CONCAT('tc', LPAD(FLOOR(1 + RAND() * 12), 3, '0'));
        SET st_status = IF(RAND() < 0.9, '재학', '휴학');

        INSERT INTO student (st_no, st_name, st_birth, st_gender, st_addr, st_phone, st_parent_phone, st_grade, tc_no, st_status) -- 변경된 부분: grade -> st_grade
        VALUES (st_no, st_name, st_birth, st_gender, st_addr, st_phone, st_parent_phone, st_grade, tc_no, st_status);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddStudents();

select * from student;

delete from student;

# subject 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddSubjects;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddSubjects()
BEGIN
    DECLARE sub_no VARCHAR(50);
    DECLARE sub_no_suffix INT DEFAULT 1;
    DECLARE sub_name VARCHAR(50);

    WHILE sub_no_suffix <= 12 DO
        SET sub_no = CASE sub_no_suffix
            WHEN 1 THEN 'kor'
            WHEN 2 THEN 'eng'
            WHEN 3 THEN 'mat'
            WHEN 4 THEN 'soc'
            WHEN 5 THEN 'sci'
            WHEN 6 THEN 'his'
            WHEN 7 THEN 'eth'
            WHEN 8 THEN 'phy'
            WHEN 9 THEN 'art'
            WHEN 10 THEN 'tec'
            WHEN 11 THEN 'inf'
            WHEN 12 THEN 'mus'
            ELSE ''
        END;

        SET sub_name = CASE sub_no_suffix
            WHEN 1 THEN '국어'
            WHEN 2 THEN '영어'
            WHEN 3 THEN '수학'
            WHEN 4 THEN '사회'
            WHEN 5 THEN '과학'
            WHEN 6 THEN '역사'
            WHEN 7 THEN '도덕'
            WHEN 8 THEN '체육'
            WHEN 9 THEN '미술'
            WHEN 10 THEN '기술가정'
            WHEN 11 THEN '정보'
            WHEN 12 THEN '음악'
            ELSE ''
        END;

        INSERT INTO subject (sub_no, sub_name)
        VALUES (sub_no, sub_name);

        SET sub_no_suffix = sub_no_suffix + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddSubjects();

delete from subject;

select * from subject;

# teacher 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddTeachers;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddTeachers()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE tc_no VARCHAR(50);
    DECLARE tc_name VARCHAR(50);
    DECLARE tc_birth DATE;
    DECLARE tc_gender VARCHAR(10);
    DECLARE tc_addr VARCHAR(50);
    DECLARE tc_phone VARCHAR(50);
    DECLARE tc_hired DATE;
    DECLARE sub_no VARCHAR(50);
    DECLARE user_id VARCHAR(50);
    DECLARE tc_status VARCHAR(10);

    WHILE i <= 12 DO
        SET tc_no = CONCAT('tc', LPAD(i, 3, '0'));
        SET tc_name = CONCAT('선생님', LPAD(i, 2, '0'));
        
        -- 생년월일 생성 (1990년 이전으로 설정)
        SET tc_birth = DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP('1960-01-01') + FLOOR(RAND() * (UNIX_TIMESTAMP('1990-01-01') - UNIX_TIMESTAMP('1960-01-01')))), '%Y-%m-%d');
        
        SET tc_gender = IF(RAND() < 0.5, '남자', '여자');
        SET tc_addr = CONCAT('대전광역시 서구 둔산동 ', LPAD(FLOOR(RAND() * 1000), 3, '0'));
        SET tc_phone = CONCAT('010-', LPAD(FLOOR(RAND() * 10000), 4, '0'), '-', LPAD(FLOOR(RAND() * 10000), 4, '0'));
        
        -- 입사일 생성 (2000년 이후로 설정)
        SET tc_hired = DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP('2000-01-01') + FLOOR(RAND() * (UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP('2000-01-01')))), '%Y-%m-%d');
        
        -- 과목 번호 매칭
        SET sub_no = CASE i
            WHEN 1 THEN 'kor'
            WHEN 2 THEN 'eng'
            WHEN 3 THEN 'mat'
            WHEN 4 THEN 'soc'
            WHEN 5 THEN 'sci'
            WHEN 6 THEN 'his'
            WHEN 7 THEN 'eth'
            WHEN 8 THEN 'phy'
            WHEN 9 THEN 'art'
            WHEN 10 THEN 'tec'
            WHEN 11 THEN 'inf'
            WHEN 12 THEN 'mus'
            ELSE ''
        END;
        
        -- user_id 설정 ('user001'부터 'user012')
        SET user_id = CONCAT('user', LPAD(i, 3, '0'));
        
        -- 상태 설정 (휴직 랜덤 2명, 나머지 재직)
        IF i <= 2 THEN
            SET tc_status = '휴직';
        ELSE
            SET tc_status = '재직';
        END IF;

        INSERT INTO teacher (tc_no, tc_name, tc_birth, tc_gender, tc_addr, tc_phone, tc_hired, sub_no, user_id, tc_status)
        VALUES (tc_no, tc_name, tc_birth, tc_gender, tc_addr, tc_phone, tc_hired, sub_no, user_id, tc_status);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddTeachers();

select * from teacher;

# user 테이블 ---------------------------------------------

-- 기존 프로시저 드롭
DROP PROCEDURE IF EXISTS AddUsers;

-- 프로시저 생성
DELIMITER //

CREATE PROCEDURE AddUsers()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE user_id VARCHAR(50);
    DECLARE user_pwd VARCHAR(50) DEFAULT '1234';
    DECLARE user_grant VARCHAR(50) DEFAULT '';

    WHILE i <= 12 DO
        SET user_id = CONCAT('user', LPAD(i, 3, '0')); -- LPAD 함수를 사용하여 'user' 다음에 001부터 012까지의 숫자를 붙입니다.
        
        INSERT INTO user (user_id, user_pwd, user_grant)
        VALUES (user_id, user_pwd, user_grant);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL AddUsers();

select * from user;

create table board(
	board_no int auto_increment primary key
    ,title varchar(100)
    ,article varchar(4000)
    ,cre_date timestamp default current_timestamp
);

# 프로시저 모음 -------------------------------------------

-- 프로시저 호출
CALL AddAttendance();

-- 프로시저 호출
CALL AddGrade();

-- 프로시저 호출
CALL AddStudents();

-- 프로시저 호출
CALL AddSubjects();

-- 프로시저 호출
CALL AddTeachers();

-- 프로시저 호출
CALL AddUsers();

# select 모음 -------------------------------------------

select * from attendance;

select * from grade;

select * from student;

select * from subject;

select * from teacher;

select * from user;

select * from board;