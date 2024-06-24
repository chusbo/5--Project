use movie;

create table t_movie(
no int auto_increment primary key,
title varchar(20));

create table t_member(
id varchar(5),
pwd varchar(20),
name varchar(20),
email varchar(50),
joinDate date);

select * from t_movie;

insert into t_movie(title)
value ('모범시민');


create table reservation(
id varchar(5),
title varchar(20));

delete from student where st_no='st001';

insert into student(st_no, st_name, st_birth, st_gender, st_addr, st_phone, st_parent_phone, st_grade, tc_no) values
('st001', '가도하', '2011-03-08', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '2학년', 'tc002'),
('st002', '가승우', '2012-04-08', '남자', '탄방동', '000-0000-0000', '000-0000-0001', '1학년', 'tc001'),
('st003', '가예준', '2010-02-08', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '3학년', 'tc003'),
('st004', '곽민재', '2012-04-12', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '1학년', 'tc001'),
('st005', '곽이든', '2011-03-12', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '2학년', 'tc002'),
('st006', '곽주원', '2010-02-12', '여자', '둔산동', '000-0000-0000', '000-0000-0001', '3학년', 'tc003'),
('st007', '김도윤', '2010-02-01', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '3학년', 'tc003'),
('st008', '김윤우', '2011-03-01', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '2학년', 'tc002'),
('st009', '김하온', '2012-04-01', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '2학년', 'tc002'),
('st010', '나시후', '2012-04-09', '남자', '둔산동', '000-0000-0000', '000-0000-0001', '1학년', 'tc001');

create table t_member(
id varchar(20),
pwd varchar(20),
name varchar(20),
email varchar(20),
joinDate timestamp default CURRENT_TIMESTAMP);



select * from student;
select * from grade;


TRUNCATE TABLE grade;

DELIMITER //

CREATE PROCEDURE InsertGrades()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT;
    DECLARE k INT;
    DECLARE grade_no INT DEFAULT 1;
    DECLARE grade_no_str CHAR(50);
    DECLARE student_no CHAR(50);
    DECLARE subject_code CHAR(50);
    DECLARE senester_code CHAR(50);
    
    SET @subjects = 'kor,mat,eng,sci,his,inf,mus,phy,art,eth,soc,tec';
    SET @senesters = '1-1,1-2,2-1,2-2,3-1,3-2';
    
    WHILE i <= 30 DO
        SET student_no = CONCAT('st', LPAD(i, 3, '0'));  -- Here is the change
        IF i <= 10 THEN
            -- 1학년
            SET k = 1;
            WHILE k <= 2 DO
                SET senester_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@senesters, ',', k), ',', -1);
                SET j = 1;
                WHILE j <= 12 DO
                    SET subject_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@subjects, ',', j), ',', -1);
                    SET grade_no_str = CONCAT('G', LPAD(grade_no, 6, '0'));
                    SET @query = CONCAT('INSERT INTO grade (grade_no, st_no, sub_no, senester, score) VALUES (''', grade_no_str, ''', ''', student_no, ''', ''', subject_code, ''', ''', senester_code, ''', FLOOR(RAND() * 101))');
                    PREPARE stmt FROM @query;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    SET grade_no = grade_no + 1;
                    SET j = j + 1;
                END WHILE;
                SET k = k + 1;
            END WHILE;
        ELSEIF i <= 20 THEN
            -- 2학년
            SET k = 3;
            WHILE k <= 4 DO
                SET senester_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@senesters, ',', k), ',', -1);
                SET j = 1;
                WHILE j <= 12 DO
                    SET subject_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@subjects, ',', j), ',', -1);
                    SET grade_no_str = CONCAT('G', LPAD(grade_no, 6, '0'));
                    SET @query = CONCAT('INSERT INTO grade (grade_no, st_no, sub_no, senester, score) VALUES (''', grade_no_str, ''', ''', student_no, ''', ''', subject_code, ''', ''', senester_code, ''', FLOOR(RAND() * 101))');
                    PREPARE stmt FROM @query;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    SET grade_no = grade_no + 1;
                    SET j = j + 1;
                END WHILE;
                SET k = k + 1;
            END WHILE;
        ELSE
            -- 3학년
            SET k = 5;
            WHILE k <= 6 DO
                SET senester_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@senesters, ',', k), ',', -1);
                SET j = 1;
                WHILE j <= 12 DO
                    SET subject_code = SUBSTRING_INDEX(SUBSTRING_INDEX(@subjects, ',', j), ',', -1);
                    SET grade_no_str = CONCAT('G', LPAD(grade_no, 6, '0'));
                    SET @query = CONCAT('INSERT INTO grade (grade_no, st_no, sub_no, senester, score) VALUES (''', grade_no_str, ''', ''', student_no, ''', ''', subject_code, ''', ''', senester_code, ''', FLOOR(RAND() * 101))');
                    PREPARE stmt FROM @query;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    SET grade_no = grade_no + 1;
                    SET j = j + 1;
                END WHILE;
                SET k = k + 1;
            END WHILE;
        END IF;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- 프로시저 호출
CALL InsertGrades();

DROP PROCEDURE IF EXISTS InsertGrades;


select * from student join grade on student.st_no=grade.st_no;

select student.st_no, grade.sub_no, grade.score from student join grade on student.st_no=grade.st_no;

select student.st_no, grade.sub_no, grade.score from student join grade on student.st_no=grade.st_no where student.st_no='st001';
