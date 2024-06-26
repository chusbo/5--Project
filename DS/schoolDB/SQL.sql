use 한빛무역;

select * from 고객; /* 고객 테이블의 모든 필드를 검색 */
select 고객번호, 주소 from 고객; /* 고객 테이블의 고객번호, 주소만 검색 */
select 도시, 지역 from 고객; /* 고객 테이블의 도시, 지역으로만 검색, 처리로직: 1. 고객 테이블의 모든 테이블 가져옴 2. 이후 도시, 지역만 남김. 3. 나머지 필드는 숨김처리 */

select * from 고객 where 지역 = "경기도"; /* 고객 테이블의 모든 필드 중 지역이 경기도에 해당되는 필드만 가져옴/ 큰따옴표 사용 X  */
select * from 고객 where 지역 = '경기도'; /* 외부에서의 지원이 작은 따옴표만 오류가 발생하지 않음 */
select * from 고객 where 지역 = '강원도';

select 고객번호, 담당자명 from 고객 where 지역='강원도'; /* 고객 테이블 필드 중 강원도에 해당되는 필드의 고객번호와 담당자명만 가져옴 */

select 고객번호, 담당자명, 마일리지 AS 포인트 from 고객; /* DB 내부에서만 대소문자 구분 X, A AS B: A를 B로 별명붙여줌(현재 SELECT 문장에서만 적용) */
select 고객번호, 담당자명, 마일리지 from 고객 where 마일리지 >= 100000; /* 마일리지가 10만 이상인 경우만 조회 */
select 고객번호, 담당자명, 도시, 마일리지 AS 포인트 from 고객 where 도시 = '서울특별시' order by 마일리지 desc; /* ORDER BY ASC : 오름차순, ORDER BY DESC : 내림차순 */

select * from 고객 order by 마일리지 desc limit 3; /* 마일리지 내림차순으로 상위 3명만 */

select distinct 도시 from 고객; /* distinct: 중복된 값 제거 */

select 25+3 as 더하기연산, 23-5 as 빼기연산, 3*5 as 곱하기연산, 23/5 as 실수나누기연산
, 23 div 5 as 정수나누기연산, 23 % 5 as 나머지_방법1, 23 mod 5 as 나머지_방법2; 

select 23 >= 5, 23 <= 5, 23 > 22, 23 = 23, 23 != 22, 23 <> 22 as 같지않다;

select * from 고객 where 담당자직위 <> '대표이사'; /* 띄어쓰기도 인식하니 동일하도록 작성에 유의 */
select * from 고객 where 담당자직위 <> '대표 이사';

select * from 고객 where 도시 = '부산광역시' and 마일리지 < 1000; /* and는 모두 충족해야 true 반환 */

select 고객번호, 담당자명, 마일리지, 도시 from 고객 where 도시 = '부산광역시'
union /* union은 다른 테이블(select)의 같은 필드(여기서의 '고객')에서 사용 */
select 고객번호, 담당자명, 마일리지, 도시 from 고객 where 마일리지 < 1000 order by 1; /* order by절은 제일 마지막에 넣어줌 */

select 고객번호, 담당자명, 마일리지, 도시 from 고객 where 도시 = '부산광역시' or 마일리지 < 1000 order by 1;

select * from 고객 where 지역 is null;

select * from 고객 where 지역 = ''; /* 빈 문자열과 null은 다름 */

update 고객 set 지역 = null where 지역 = '';

select * from 고객 where 지역 is null; /* is null: null 값 조회 */

select 고객번호, 담당자명, 담당자직위 from 고객 where 담당자직위='영업 과장' or 담당자직위='마게팅 과장';

select 고객번호, 담당자명, 담당자직위 from 고객 where 담당자직위 in('영업과장', '마케팅 과장'); /* in(값1, 값2): or과 동일 */

select 담당자명, 마일리지 from 고객 where 마일리지 >= 100000 and 마일리지 <= 200000;

select 담당자명, 마일리지 from 고객 where 마일리지 between 100000 and 200000; /* between 초기값(이상) and 최종값(이하) */

select * from 고객 where 도시 like '%광역시' and (고객번호 like '_C%' or 고객번호 like '__C%');
/* _: 한 칸을 의미, ~%: ~로 시작하는 문자열, %~%: ~가 들어가는 문자열, %~: ~로 끝나는 문자열  */

/* 점검문제 */

/* 문제1 */
select * from 고객 where 도시='서울특별시' and 마일리지 between 15000 and 20000;

/* 문제2 */
select distinct 지역, 도시 from 고객 order by 1;

/* 문제3 */
select * from 고객 where 도시 in ('춘천시', '과천시', '광명시') and (담당자직위 like '%사원' or 담당자직위 like '%이사'); 

/* 문제4 */
select * from 고객 where not (도시 like '%광역시' or 도시 like '%특별시') order by 마일리지 desc limit 3;

/* 문제5 */
select * from 고객 where 지역 like '%도' and 담당자직위 <> '대표 이사';

/* ★ char_length(): 문자의 개수 반환, ★ length(): 문자열에 할당된 바이트 수 반환*/
select char_length('HELLO'), length('HELLO'), char_length('안녕'), length('안녕');

/* ★ concat(문자열1, 문자열2): 문자열을 연결, concat_ws(구분자, 문자열1, 문자열2, ...): 구분자와 함께 문자열 연결 */
select concat('DREAMS', 'COME', 'TRUE'), concat_ws('-', '2023', '01', '29');

/* left(문자열, 길이): 문자열의 왼쪽부터 길이만큼 문자열 반환, right(문자열, 길이): 문자열의 오른쪽부터 길이만큼 문자열 반환 */
/* ★ substr 또는 ★ substring(문자열, 시작위치, 길이): 지정한 위치로부터 길이만큼 문자열 반환 */
select left('SQL 완전정복', 3), right('SQL 완전정복', 4), substr('SQL 완전정복', 2, 5), substr('SQL 완전정복', 2);

/* substring_index(문자열, 구분자, 인덱스): 지정한 구분자를 기준으로 문자열 분리 */
select substring_index('서울시 동작구 흑석로', ' ', 2), substring_index('서울시 동작구 흑석로', ' ', -2);

/* lpad(): 왼쪽에 특정 문자를 채움, rpad(): 오른쪽에 특정 문자를 채움 */
select lpad('SQL', 10, '#'), rpad('SQL', 5, '*');

/* ★ ltrim(): 왼쪽의 공백 제거, ★ rtrim(): 오른쪽 공백 제거 */
select length(ltrim('  SQL  ')), length(rtrim('  SQL  ')), length(trim('  SQL  '));

/* ★ trim(문자열 방향 제거할_문자열 from 문자열) */
/* trim(both): 양쪽에 있는 동일 문자열을 제거, trim(leading): 왼쪽, trim(trailing): 오른쪽 문자열 제거 */
select trim(both 'abc' from 'abcSQLabcabc'), trim(leading 'abc' from 'abcSQLabcabc'), trim(trailing 'abc' from 'abcSQLabcabc');

/* field(찾을 문자열, 문자열1, 문자열2, ... ): 문자열의 위치 값을 반환, 없으면 0 반환 */
/* find_in_set(찾을 문자열, 문자열 리스트): 문자열 리스트에서 지정한 문자열을 찾아서 위치 값을 반환 */
/* ★ instr(기준 문자열, 부분 문자열), locate(부분 문자열, 기준 문자열): 기준 문자열 중 부분 문자열을 찾아 위치 값을 반환 */
select field('JAVA', 'SQL', 'JAVA', 'C'), find_in_set('JAVA', 'SQL, JAVA, C'), instr('네 인생을 살아라', '인생'), locate('인생', '네 인생을 살아라');

/* elt(찾을 문자열 위치, 문자열1, 문자열2, ...): 찾을 문자열의 위치의 값 */
select elt(2, 'SQL', 'JAVA', 'C'); 

select repeat('*', 5); /* ★ repeat(문자열, 횟수): 매개변수에 반복할 문자열과 반복할 횟수를 넣음 */

select replace('010.1234.5678', '.', '-'); /* ★ replace(문자열, 원래 문자열, 바꿀 문자열): 문자열의 일부를 다른 문자열로 변환 */

select reverse('OLLEH'); /* 문자열을 거꾸로 뒤집음 */

/* 	ceiling(숫자):  올림, floor(숫자): 내림, round(숫자): 반올림,
	round(숫자, 자릿수): 지정한 위치에서 반올림, truncate(숫자, 자릿수): 지정한 위치에서 버림 */
select ceiling(123.56), floor(123.56), round(123.56), round(123.56, 1), truncate(123.56, 1);

/* abs(숫자): 절댓값 반환, sign(숫자): 양수의 경우 1, 음수의 경우 -1 반환 */
select abs(-120), abs(120), sign(-120), sign(120);

/* mod(): 나머지, 'mod(숫자1, 숫자2)' or '숫자1 % 숫자2' or '숫자1 mod 숫자2'로 총 세 가지 방법 사용 */
select mod(203, 4), 203 % 4, 203 mod 4;

/* 	power(숫자1, 숫자2): 숫자1의 숫자2 제곱승 값 반환, sqrt(숫자): 숫자의 제곱근 값 반환
	rand(): 0과 1사이 임의의 실수 값 반환 */
select power(2, 3), sqrt(16), rand(), rand(100), round(rand() * 100);

/* now(), sysdate(): 시스템의 현재 날짜와 시간 반환, curdate(): 시스템의 현재 날짜 반환, curtime(): 시스템의 현재 시간 반환 */
select now(), sysdate(), curdate(), curtime();

/* year(): 연도, quarter(): 분기, month(): 월(숫자), day(): 일, hour(): 시, minute(): 분, second(): 초 */
select now(), year(now()), quarter(now()), month(now()), day(now()), hour(now()), minute(now()), second(now());

/* 	datediff(끝_일자, 시작_일자): 기간을 일자 기준으로 반환,  
	timestampdiff(단위, 시작_일자, 끝_일자): 기간을 지정한 단위 기준으로 반환 */
select now(), datediff('2025-12-20', now()), datediff(now(), '2025-12-20'), timestampdiff(year, now(), '2025-12-20'), timestampdiff(month, now(), '2025-12-20'), timestampdiff(day, now(), '2025-12-20');

/* 	★ adddate(날짜, 기간) 또는 adddate(날짜, interval 기간 단위): 지정한 날짜를 기준으로 그 기간만큼 더한 날짜를 반환 
	subdate(날짜, 기간) 또는 subdate(날짜, interval 기간 단위): 기간만큼 뺀 날짜를 반환 */
select now(), adddate(now(), 50), adddate(now(), interval 50 day), adddate(now(), interval 50 month), subdate(now(), interval 50 hour);

/* 	last_day(날짜): 해당 월의 마지막 일자 반환, dayofyear(날짜): 현재 연도에서 며칠이 지났는 지를 반환 
	monthname(날짜): 월을 영문으로 반환, weekday(날짜): 요일을 정수로 반환 */
select now(), last_day(now()), dayofyear(now()), monthname(now()), weekday(now());

/* cast(값 as 데이터타입), convert(값, 데이터타입): 원하는 형태로 데이터타입을 변경하여 처리하거나 확인 */
/* 문자 '1'을 부호 없는 숫자 형식, 숫자 2를 문자 형식으로 변경 */
select cast('1' as unsigned), cast(2 as char(1)), convert('1', unsigned), convert(2, char(1));

/* if(조건, 수식1, 수식2): 조건의 결과가 참이면 수식1 반환, 아니면 수식2 반환 */
select if(12500 * 450 > 5000000, '초과달성', '미달성');

/* ifnull(수식1, 수식2): 수식1이 null이 아니면 수식1의 값을 반환, null이면 수식2의 값을 반환 */
select ifnull(1, 0), ifnull(null, 0), ifnull(1/0, 'OK');

/* nullif(수식1, 수식2): 두 수식 값을 비교하여 값이 같으면 null 반환, 다르면 수식1의 값 반환 */
select nullif(12 * 10, 120), nullif(12 * 10, 1200);

/* 점검문제 */

/* 문제1 */
select 고객회사명
	, concat('**', left(고객회사명, 2)) as 고객회사명2, 전화번호
    , substr(replace(전화번호, ')', '-' ), 2) as 전화번호2 from 고객;
#고객회사명2 replace(고객회사명, '__%', '**%');
#전화번호2 replace(전화번호 from 고객, '(___)%', '___-%');
 
/* 문제2 */
/* 주문금액 = 주문수량 * 단가, 할인금액 = 주문수량 * 단가 * 할인율, 실주문금액 = 주문금액 - 할인금액 */
select *
	, truncate((주문수량 * 단가), -1) as 주문금액
    , truncate((주문수량 * 단가 * 할인율), -1) as 할인금액
    , truncate((주문수량 * 단가) - (주문수량 * 단가 * 할인율), -1) as 실주문금액 from 주문세부;

/* 문제3 */
/* 만나이: timestampdiff(year, 생일, now()), 입사일수: datediff(now(), 입사일), 500일후: adddate(입사일, interval 500 day) */
select 이름, 생일
	, timestampdiff(year, 생일, now()) as 만나이, 입사일
    , datediff(now(), 입사일) as 입사일수
    , adddate(입사일, interval 500 day) as 500일후 from 사원;

/* 문제4 */
/* 마일리지 <= 100000 'VVIP고객',  <= 10000 'VIP고객' 10000 > 일반 */
select 담당자명, 고객회사명, 도시
, if(도시 like '%특별시' or 도시 like'%광역시', '대도시', '도시') as 도시구분, 마일리지
, case when 마일리지 >= 100000 then 'VVIP고객'
	   when 마일리지 >= 10000 then 'VIP고객'
	   else '일반고객'
	   end as 마일리지구분
	   from 고객;
 
/* 문제5 */
/* 	주문년도: year(주문일), 주문분기: quarter(주문일), 주문월: month(주문일), 주문일: day(주문일),
	주문요일:weekday(주문일) , 한글요일: cast(주문일 as string)
    case weekday(주문일) when 0 then '월요일' when 1 then '화요일', ..., else '일요일' */
select 주문번호, 고객번호, 주문일
	, year(주문일) as 주문년도
    , quarter(주문일) as 주문분기
    , month(주문일) as 주문월
    , day(주문일) as 주문일
    , weekday(주문일) as 주문요일 
    , case weekday(주문일) when 0 then '월요일'
						 when 1 then '화요일'
						 when 2 then '수요일'
						 when 3 then '목요일'
						 when 4 then '금요일'
						 when 5 then '토요일'
						 else '일요일'
						 end as 한글요일
						 from 주문;

/* 문제6 */
/* 요청일보다 발송일이 7일 이상 늦은 주문내역 */
select *
	, datediff(발송일, 요청일) as 지연일수
    from 주문 where datediff(발송일, 요청일) >= 7;

#2024-05-10----------------------------------------------------------------------------
use 한빛무역;
/* 	TABLE, *로 잡거나 고객번호(PK)로 잡음
	PK: Primary Key, NN:Not Null
    Datatype
    CHAR(크기): 문자열, VARCHAR(최대_크기): 가변적문자열,  */

select * from 고객;
/* 	count(*|컬럼): 레코드 개수, sum(컬럼|수식): 합, avg(컬럼|수식): 평균, 
	max(컬럼|수식): 최댓값, min(컬럼|수식): 최솟값, stddev(컬럼|수식): 표준편차 */
select count(*), count(고객번호), count(도시), count(지역) from 고객;

select sum(마일리지), avg(마일리지), min(마일리지), max(마일리지) from 고객;

/* where절에 조건(각 행에 대한 조건)을 넣으면 조건에 맞는 레코드에 한해서 값을 요약할 수 있음 */
select sum(마일리지), avg(마일리지), min(마일리지), max(마일리지) from 고객 where 도시 ='서울특별시';

/* 	select 그룹으로_묶을_컬럼명, 집계_함수 from 테이블명 [where절] group by 그룹으로_묶을_컬럼명;(선호하는 방식)
	★ group by: 그룹으로 묶어서 요약할 때 사용 */
select 도시, count(*) as 고객수, avg(마일리지) as 평균마일리지 from 고객 group by 도시;
/* *이나 고객번호로 값을 불러올 수 있음 */

/* 	select 그룹으로_묶을_컬럼명, 집계_함수 from 테이블명 [where절] group by 컬럼_순번;(선호하지 않는 방식)
	group by: 그룹으로 묶어서 요약할 때 사용 */
select 도시, count(고객번호) as 고객수, avg(마일리지) as 평균마일리지 from 고객 group by 1;

/* 	우선순위가 1번(담당자직위), 2번(도시)로 순서에 유의하여 작성, order by는 생략하면 기본값 asc 적용
	인덱스는 0부터 있으나 1부터 사용되며 열번호(아래 코드 기준, 담당자직위(1), 도시(2), 고객수(3), 평균마일리지(4))로 값을 불러올 수 있음. */
select 담당자직위, 도시, count(*) as 고객수, avg(마일리지) as 평균마일리지 from 고객 group by 담당자직위, 도시 order by 1, 2;

/* 	HAVING절: GROUP BY의 결과에 대하여 '추가조건'을 넣고자 한다면 HAVING절을 사용(HAVING절은 GROUP BY와 세트로 GROUP BY가 없으면 사용 불가)
	WHERE절은 각 행에 대한 조건, HAVING은 GROUP BY에 대한 조건으로 차이를 보임
	SELECT 그룹으로_묶을_컬럼명, 집계_함수 FROM 테이블명 [WHERE절] GROUP BY 그룹으로_묶을_컬럼명 [HAVING절]; */
select 도시, count(*) as 고객수, avg(마일리지) as 평균마일리지 from 고객 group by 도시 having count(*) >= 10;

/* 	고객번호가 'T'로 시작하는 고객에 대해 도시별로 묶어서 고객 마일리지 합을 구하고, 마일리지 합이 1,000점 이상인 레코드만 출력
	고객번호는 그룹이 아니므로 WHERE절에 사용, HAVING에는 마일리지의 합이 1000점 이상인 도시만 출력하기 위해 사용 */
select 도시, sum(마일리지) from 고객 where 고객번호 like 'T%' group by 도시 having sum(마일리지) >= 1000;

/* 	★ WITH ROLLUP: 그룹별 소계와 전체 총계를 한번에 확인하고 싶을 때 사용
	SELECT 그룹으로_묶을_컬럼명, 집계_함수 FROM 테이블명 GROUP BY 그룹으로_묶을_컬럼명 WITH ROLLUP; 
	만약 결과값이 나오지 않는다면 update문으로 문자열을 null로 변경하기
    update 테이블명 set 컬럼명 = null where 컬럼명 = '';	*/
select 도시, count(*) as 고객수, avg(마일리지) as 평균마일리지 from 고객 where 지역 is null group  by 도시 with rollup;

/* with rollup에서 null 값 부분에 ★'ifnull(도시, '총계') as 도시'처럼 값을 입력해주는 것이 중요! */
select ifnull(도시, '총계') as 도시, count(*) as 고객수, avg(마일리지) as 평균마일리지 from 고객 where 지역 is null group by 도시 with rollup;
 
 /* IFNULL(수식1, 수식2): 수식1이 NULL이면 수식2 반환 */
select ifnull(담당자직위, '담당자직위_NULL') as 담당자직위, ifnull(도시, '도시_NULL') as 도시, count(*) as 고객수 from 고객 where 담당자직위 like '%마케팅%' group by 담당자직위, 도시 with rollup;

/* 의미가 서로 다른 NULL 어떻게 구별? → GROUPING() */
select 지역, count(*) as 고객수 from 고객 where 담당자직위 = '대표 이사' group by 지역 with rollup;

/* GROUPING(): WITH ROLLUP의 결과로 나온 NULL에 대해서는 1을 반환, 그렇지 않은 NULL에 대해서는 0을 반환 */
select 지역, count(*) as 고객수, grouping(지역) as 구분 from 고객 where 담당자직위 = '대표이사' group by 지역 with rollup;

/* GROUP_CONCAT(컬럼명): 각 행에 있는 값을 결합 */
select group_concat(이름) from 사원;

/* GROUP_CONCAT(DISTINCT 컬럼명): 중복되는 컬럼명은 한 번씩만 출력 */
select group_concat(distinct 지역) from 고객;

/* GROUP_CONCAT(컬럼명) AS 별명: 각 행에 있는 값을 결합 후 그 행에서 사용할 별명을 붙여줌 */
select 도시, group_concat(고객회사명) as 고객회사명_목록 from 고객 group by 도시;

select 지역, count(*) as 고객수, grouping(지역) as 구분 from 고객 where 담당자직위 = '대표이사' group by 지역 with rollup;


/* 점검문제 */

/* 문제1 */
select count(도시) as 'COUNT(도시)'
	, count(distinct 도시) as 'COUNT(DISTINCT 도시)'
    from 고객;

/* 문제2 */
select year(주문일) as 주문년도
	, count(주문번호) as 주문건수
    from 주문 group by 주문년도;

/* 문제3 */
select year(주문일) as 주문년도
	, quarter(주문일) as 분기
    , count(주문일) as 주문건수
	from 주문 group by 주문년도, 분기 with rollup;

/* 문제4 */
select month(주문일) as 주문월
	, count(datediff(발송일, 요청일)) as 주문건수
	from 주문 where datediff(발송일, 요청일) > 0 group by 주문월 order by 주문월 asc;


/* 문제5 */
select 제품명
	, sum(재고) as 재고합
    from 제품 where 제품명 like '%아이스크림' group by 제품명;
    
/* 문제6 */
select if(마일리지 >= 50000, 'vip고객', '일반고객') as 고객구분
	, count(*) as 고객수
	, avg(마일리지) as 평균마일리지 from 고객 group by 고객구분;


/* 	크로스 조인: 한쪽 테이블의 각 행마다 다른쪽 테이블의 모든 행이 한 번씩 각각 매칭되는 조인을 의미, 카티션 곱이라고도 칭함.
	ANSI SQL 조인 방식(표준): 
    SELECT * 
    FROM 테이블A 
    [CROSS|INNER|OUTER] JOIN 테이블B 
  ★ ON 조인_조건 (여기서 CROSS는 'ON' 생략이 가능)
    WHERE 나머지_조건;  
    추가로 '부서 CROSS JOIN 사원'은 쿼리 테이블 */
select 부서.부서번호, 부서명, 이름, 사원.부서번호 
	from 부서 
	cross join 사원 
    where 이름 = '배재용';

/* 	on 이후는 '조인 조건'이 들어가고, 이때 같은 필드값으로 하나는 일반, 하나는 PK가 들어감 
	여기서 사원.부서번호(일반), 부서.부서번호(PK) */
select 사원번호, 직위, 사원.부서번호, 부서명 
	from 사원 
    inner join 부서 
    on 사원.부서번호 = 부서.부서번호 
    where 이름 = '이소미';

select 고객.고객번호, 담당자명, 고객회사명
	, count(*) as 주문건수 
    from 고객 
    inner join 주문 
    on 고객.고객번호 = 주문.고객번호 
    group by 고객.고객번호, 담당자명, 고객회사명 
    order by count(*) desc;

/* 	1번: 고객 inner join 주문, 1번 조인 조건: on 고객.고객번호 = 주문.고객번호, 
	2번: inner join 주문세부, 2번 조인 조건: on 주문.주무번호 = 주문세부.주문번호 */
select 고객.고객번호, 담당자명, 고객회사명
	, sum(주문수량 * 단가) as 주문금액합 
	from 고객 
    inner join 주문 
    on 고객.고객번호 = 주문.고객번호 
    inner join 주문세부 
    on 주문.주문번호 = 주문세부.주문번호 
    group by 고객.고객번호, 담당자명, 고객회사명 
    order by 주문금액합 desc;

/* 고객번호에 알파벳 대문자 한 글자 이름 부여 */
select 고객번호, 담당자명, 마일리지, 등급.* from 고객 cross join 마일리지등급 as 등급 where 담당자명 = '이은광';

/*	아래 방법은 일반적인 방법은 아니므로 좋은 방법은 아님(필드명이 같은 PK와 외래키가 없이 마일리지와 상,하한마일리지로 조인) 
	아래의 on절을 'on 마일리지 between 하한마일리지 and 상한마일리지'로도 작성 가능 */
select 고객번호, 고객회사명, 담당자명, 마일리지, 등급명
from 고객 
inner join 마일리지등급
on 마일리지 >= 하한마일리지 and 마일리지 <= 상한마일리지
where 담당자명 = '이은광';
    
/* SELECT * 
	FROM 테이블A 
    LEFT|RIGHT [OUTER] JOIN 테이블B
    ON 조인_조건
    WHERE 나머지_조건; */
select 사원번호, 이름, 부서명
	from 사원
    left outer join 부서
    on 사원.부서번호 = 부서.부서번호
    where 성별 = '여';
 
 /* 사원 테이블의 정보는 모두 출력, 겹치지 않는 부서 테이블의 정보는 null로 출력 */
 select *
	from 사원
    left outer join 부서
    on 사원.부서번호 = 부서.부서번호;
 
 /* 부서 테이블의 정보는 모두 출력, 겹치지 않는 사원 테이블의 정보는 null로 출력 */
 select *
	from 부서
    left outer join 사원
    on 사원.부서번호 = 부서.부서번호;

/* 부서명과 해당 부서의 소속 사원 정보 + 사원이 한명도 존재하지 않는 부서명을 출력 */
select 부서명, 사원.*
from 사원
right outer join 부서
on 사원.부서번호 = 부서.부서번호;

/* 사원이 한명도 존재하지 않는 부서명만 출력 */
select 부서명, 사원.*
from 사원
right outer join 부서
on 사원.부서번호 = 부서.부서번호
where 사원.부서번호 is null;

/* 소속 부서가 없는 사원의 이름 출력, 사원 테이블이 기준으로 부서가 없더라도 출력됨 */
select 이름, 부서.*
from 사원
left outer join 부서
on 사원.부서번호 = 부서.부서번호
where 부서.부서번호 is null;

/* 	셀프 조인(SELF JOIN): 동일한 테이블 내에서 한 컬럼이 다른 컬럼을 참조하는 조인 
	사원번호, 사원의 이름, 상사의 사원번호, 상사의 이름 출력 */
select 사원.사원번호, 사원.이름, 상사.사원번호 as '상사의 사원번호', 상사.이름 as '상사의 이름'
from 사원
inner join 사원 as 상사
on 사원.상사번호 = 상사.사원번호;

/* 사원이름, 직위, 상사이름을 상사이름 순으로 정렬하고 상사가 없는 사원의 이름도 같이 출력 */
select 사원.이름 as 이름, 사원.직위, 상사.이름 as 상사이름
from 사원 as 상사
right outer join 사원
on 사원.상사번호 = 상사.사원번호
order by 상사이름;


/* 점검문제 */

/* 문제1 */
select 제품.제품명
, sum(주문수량) as 주문수량합
, sum(주문세부.단가 * 주문수량) as 주문금액합
from 제품
inner join 주문세부
on 제품.제품번호 = 주문세부.제품번호
group by 제품명;

/* 문제2 */
select year(주문일) as 주문년도, 제품명
, sum(주문세부.주문수량) as 주문수량합
from 주문세부
inner join 주문
on 주문.주문번호 = 주문세부.주문번호
inner join 제품
on 주문세부.제품번호 = 제품.제품번호
where 제품명 like '%아이스크림'
group by 주문년도, 제품명;

/* 문제3 */
select 제품명
, sum(주문세부.주문수량) as 주문수량합
from 제품
left outer join 주문세부
on 주문세부.제품번호 = 제품.제품번호
group by 제품명;

/* 문제4 */
select 고객.고객번호, 고객회사명, 담당자명, 등급명, 마일리지
from 고객
inner join 마일리지등급
on 마일리지 between 10000 and 99999
where 등급명 = 'A';

#2024-05-13-----------------------------------------------------------------------------------------------------------
use 한빛무역;
/* 	서브쿼리(SubQuery): SQL문 내부에서 사용하는 SELECT문으로 복잡한 데이터 추출 및 조작 작업에 유용, SQL문의 유연성과 기능 확장에 도움이 됨
	소괄호('()') 안에 기술, WHERER절(제일 많이 사용), SELECT절, FROM절, HAVING절 등에 넣어 사용
	목적: 데이터 필터링, 집계 및 계산, 비교 및 검증, 중첩된 데이터 추출, EXISTS절	*/
select 고객번호, 고객회사명, 담당자명, 마일리지 
from 고객 
where 마일리지 = (select max(마일리지) from 고객);

/* 	
	1. 주문 테이블에서 주문번호가 'H0250'인 고객의 고객번호로
	2. 고객 테이블의 같은 고객번호를 가지고 있는 필드의 고객회사명, 담당자명, 전화번호, 주소를 가져옴
	★ 서브쿼리는 결과로 보여지는 값과는 다르게 all(*)처럼 인식되고 있음.(아래처럼 작성 후 비교)
		이후 메인 select에 해당되는 필드만 출력
 	select *
	from 고객
	where 고객번호 = (select 고객번호 from 주문 where 주문번호 = 'H0250');
*/
select *
from 고객
where 고객번호 = (select 고객번호 from 주문 where 주문번호 = 'H0250');

select 고객회사명, 담당자명, 전화번호, 주소
from 고객
where 고객번호 = (select 고객번호 from 주문 where 주문번호 = 'H0250');

/* 같은 내용의 코드이나 조인을 사용 */
select 고객회사명, 담당자명, 전화번호, 주소
from 고객
inner join 주문
on 고객.고객번호 = 주문.고객번호
where 주문번호 = 'H0250';

/* 	고객 테이블 중 부산광역시에 거주하는 사람의 최소 마일리지는 int형 데이터 806이나 데이터 베이스의 값은
	수시로 변경되기 때문에 where 마일리지 > 806 처럼 고정되는 값으로 작성하지 않음. */
select min(마일리지)
from 고객
where 도시 = '부산광역시';

select 담당자명, 고객회사명, 마일리지
from 고객
where 마일리지 > (select min(마일리지) from 고객 where 도시 = '부산광역시');

/*
	복수 행 서브쿼리(Multi-Row SubQuery): 서브쿼리 결과가 여러 행이 나오는 쿼리.
	IN, ANY, SOME, ALL, EXISTS와 같은 복수 행 비교 연산자 사용하여 메인쿼리와 연결
    IN(=): 메인 쿼리의 비교 조건이 서브쿼리 결과 중 '일치하는 것이 하나라도 있으면 참', 서브쿼리의 각 결과값마다 = 연산자로 비교
    ANY, SOME(MIN): 서브쿼리의 각 결과값을 >, <, >=, <= 등의 비교 연산자로 비교하여 '하나 이상 일치하면 참', 서브쿼리의 최소 결과값과 비교
    ALL(MAX): 서브쿼리의 각 결과값을 >, <, >=, <= 등의 비교 연산자로 비교하여 '모두 일치하면 참', 서브쿼리의 최대 결과값과 비교
	EXISTS: 서브쿼리에 '비교 조건을 만족하는 결과가 존재하면 참', 컬럼으로 비교하지 않고, '행의 존재여부로 비교'하기 때문에 EXISTS 연산자 앞에는 컬럼명을 넣지 않음(좌측에 필드명 X)
    (EXISTS의 반환형은 논리형으로 반환값은 true, false로 false는 버리고 true만 가져옴)
*/
select avg(마일리지), 지역 from 고객 group by 지역;

/* IN(=): 서브쿼리의 각 결과마다 = 연산자를 사용하여 비교하여 해당되는 필드값 반환 */
select 고객번호
from 고객
where 도시 = '부산광역시';

select count(*) as 주문건수
from 주문
where 고객번호 in (select 고객번호 from 고객 where 도시 = '부산광역시');

/* ANY, SOME(MIN): 서브쿼리의 각 결과에 대해 > 등 비교 연산자를 사용하여 서브쿼리의 '최소값'과 비교하여 '하나 이상' 만족하는 필드의 필드값을 반환 */
select 마일리지
from 고객
where 도시 = '부산광역시';

select 담당자명, 고객회사명, 마일리지
from 고객
where 마일리지 > any (select 마일리지 from 고객 where 도시 = '부산광역시');

/* ALL(MAX): 서브쿼리의 각 결과에 대해 > 등 비교 연산자를 사용하여 비교한 후 서브쿼리의 '최대값'과 비교하여 '모두' 만족하는 필드의 필드값을 반환 */
select avg(마일리지) from 고객 group by 지역;

select 담당자명, 고객회사명, 마일리지
from 고객
where 마일리지 > all (select avg(마일리지) from 고객 group by 지역);

/*	★ DISTINCT: 중복성 최소화(중복된 필드값 최소화로 제거가 아님), 딜리버리(배송장) 등 기능구현할 때 반드시 사용해야 함
	필드(필드명+필드값), ex) 고객번호(필드명)+'NETVI'(필드값) */
select 고객번호 from 주문;
select distinct 고객번호 from 주문;

/* EXISTS(Boolean형): 서브쿼리에 비교 조건을 만족하는 결과가 존재하면 참. 컬럼이 아닌, 행의 존재 여부로 비교하여 EXISTS 연산자 앞에는 컬럼명을 넣지 않음 */
select 고객번호, 고객회사명, 주소, 전화번호
from 고객
where exists (select * from 주문 where 고객번호 = 고객.고객번호);

/* IN 사용 */
select 고객번호, 고객회사명, 주소, 전화번호
from 고객
where 고객번호 in (select distinct 고객번호 from 주문);

/* INNER JOIN 사용 */
SELECT * FROM 주문;
SELECT * FROM 고객;

/* order by 컬럼명 asc: 오름차순(기본값으로 생략이 가능), desc: 내림차순 */
select distinct 고객.고객번호, 고객회사명, 주소, 전화번호
from 고객
inner join 주문
on 고객.고객번호 = 주문.고객번호
order by 고객.고객번호 asc;

/* EXISTS 사용, 단 한 번도 주문한 적이 없는 고객의 정보 검색 */
select 고객번호, 고객회사명, 주소, 전화번호
from 고객
where not exists (select * from 주문 where 고객번호 = 고객.고객번호);

/* 위 코드 중 null 값 제거 */
select 고객.고객번호, 고객회사명, 주소, 전화번호
from 고객
left join 주문
on 고객.고객번호 = 주문.고객번호
where 주문.고객번호 is null;

/* 	HAVING절 내부의 서브쿼리
	HAVING절은 GROUP BY에 대한 '추가조건'으로 각 행에 대한 조건인 WHERE절과 기능이 유사 */
select 도시, avg(마일리지) as 평균_마일리지
from 고객
group by 도시
having avg(마일리지) > (select avg(마일리지) from 고객)
order by 평균_마일리지 desc;

/* FROM절 내부 서브쿼리(인라인 뷰(가상테이블), 반드시 별명을 지정해주어야 함(별명을 테이블명처럼 사용)) */
select 도시
, avg(마일리지) as 도시_평균마일리지
from 고객
group by 도시;

/* SELECT문 뒤에는 필드만 올 수 있음 */
select 담당자명, 고객회사명, 마일리지, 고객.도시, 도시_평균마일리지, 도시_평균마일리지 - 마일리지 as 차이
from 고객			# ★ FROM 뒤의 고객 테이블은 보조기억장치에 생성되어 있다가 실행하면 주기억장치로 상주(물리적 테이블)
, (select 도시		# ★ 서브쿼리(SELECT문)은 보조기억장치에 있지 않다가 실행하면 주기억장치로 상주(가상 테이블)
, avg(마일리지) as 도시_평균마일리지
from 고객 						
group by 도시
) as 도시별요약
where 고객.도시 = 도시별요약.도시;

/* 	SELECT절 내부 서브쿼리(스칼라 서브쿼리: 서브쿼리가 하나의 값을 생성하는 형태), 반환되는 값은 메인 쿼리에서 사용
	단, 서브쿼리의 결과로 행을 0개 반환하면 메인 쿼리의 결과는 NULL, 2개 이상 반환하면 오류가 발생 */
select max(주문일)
from 주문, 고객		# 해당 코드에서는 고객 필드에 대한 값이 없어서 그대로 실행이 불가.(from절에 고객 필드 추가)
where 주문.고객번호 = 고객.고객번호; 

select 고객번호
	, 담당자명
	, (select max(주문일)
	from 주문
	where 주문.고객번호 = 고객.고객번호
	) as 최종주문일
from 고객;

/*
	CTE(Common Table Expression): 쿼리로 만든 '임시 데이터셋', WITH절에서 정의(SELECT문에 별명 부여)
	인라인 뷰와 마찬가지로 파생 테이블(Derived Table)처럼 사용(미리 만들어놓는 테이블(가상 테이블)),
    하나의 쿼리를 논리적인 블록으로 나눌 수 있어 가독성이 좋고, 쿼리 내에서 여러 번 참조(재사용성이 좋음)
    
    WITH CTE명  AS
    (
		SELECT문
    )
*/
with 도시별요약 as
	(
	 select 도시, avg(마일리지) as 도시_평균마일리지
     from 고객
     group by 도시
    )
select 담당자명, 고객회사명, 마일리지, 고객.도시, 도시_평균마일리지, 도시_평균마일리지 - 마일리지 as 차이
from 고객, 도시별요약
where 고객.도시 = 도시별요약.도시;

/* 	상관 서브쿼리(Correlated SubQuery): 메인 쿼리와 서브쿼리 간의 상관관계를 포함하는 형태의 쿼리, 메인 쿼리를 한 행씩 처리
	연관이 있는 컬럼을 기준으로 서브쿼리에서 값을 찾아 데이터가 많아지면 속도가 느려질 수 있으니 주의
    상관 서브쿼리는 SELECT절, FROM절, WHERE절 등(HAVING절 제외)에서 사용 */
select 사원번호, 이름, 상사번호, (select 이름 from 사원 as 상사 where 상사.사원번호 = 사원.상사번호) as 상사이름
from 사원;

/* 	다중 컬럼 서브쿼리(Multi-Column SubQuery): 서브쿼리에서 여러 개의 컬럼을 사용하여 다중 비교를 하는 쿼리
	서브쿼리의 결과로 나오는 여러 컬럼을 메인 쿼리의 값과 비교하여 결과를 출력 */
select 도시, 담당자명, 고객회사명, 마일리지
from 고객
where (도시, 마일리지) in (select 도시, max(마일리지) from 고객 group by 도시); # WHERE A IN B, 여기서의 A와 B는 순서와 개수가 같아야 함.

/* 점검문제 */

/* 문제1 */
select 부서명
from 부서
inner join 사원
on 사원.부서번호 = 부서.부서번호
where 이름 = '배재용';
/* 문제1(참고용)*/
select 부서명
from 부서
where 부서번호 in (select 부서번호
				from 사원
                where 이름 = '배재용');

/* 문제2 */
select 제품번호, 제품명, 포장단위, 단가, 재고, 단가 * 재고 as 재고금액
from 제품
where not exists (select * from 주문세부 where 제품번호 = 제품.제품번호);
/* 문제2(참고용) */
select 제품번호, 제품명, 포장단위, 단가, 재고, 단가 * 재고 as 재고금액
from 제품
where 제품번호 not in (select 제품번호 from 주문세부);

/* 문제3 */
select distinct 담당자명, 고객.고객회사명
, (select count(주문일) from 주문 where 주문.고객번호 = 고객.고객번호) as 주문건수
, (select min(주문일) from 주문 where 주문.고객번호 = 고객.고객번호) as 최초주문일
, (select max(주문일) from 주문 where 주문.고객번호 = 고객.고객번호) as 최종주문일
from 고객
where (select count(주문일) from 주문 where 주문.고객번호 = 고객.고객번호) > 0;
/* 문제3(참고용) */
select 담당자명, 고객회사명
, (select count(고객번호) from 주문 where 고객.고객번호 = 주문.고객번호) as 주문건수
, (select min(주문일) from 주문 where 고객.고객번호 = 주문.고객번호) as 최초주문일
, (select max(주문일) from 주문 where 고객.고객번호 = 주문.고객번호) as 최종주문일
from 고객;

/*
	INSERT(삽입): 테이블에 새로운 '행을 삽입'하는 경우에 사용
	
    INSERT INTO 테이블명
    VALUES(값1, 값2, ...);
 	
    INSERT INTO 테이블명(필드명1, 필드명2, 필드명3)
	VALUES(필드값1, 필드값2, 필드값3); 처럼 테이블명에 테이블 내 필드명과 그에 해당하는 필드값을 작성해야 행이 삽입됨
    
    만약, 중복된 값이나 NULL값이 들어가지 않고 오류가 발생하면
    테이블 설정에서 필드명 부분에 'NN(Not Null)' or 'UQ(Unique)' 체크여부 확인
*/
insert into 부서
values('A5', '마케팅부'); # 모든 필드명에 해당되는 값을 넣어야 함.(부서 테이블은 부서번호와 부서명 필드를 가짐)

insert into 제품
values(91, '연어피클소스', null, 5000, 40); # 여기서 91은 PK로 기준값

insert into 제품(제품번호, 제품명, 단가, 재고)
values(90, '연어핫소스', 4000, 50); # 여기서도 90은 PK로 기준값이 됨

insert into 사원(사원번호, 이름, 직위, 성별, 입사일)
values('E20', '김사과', '수습사원', '남', curdate())
	, ('E21', '박바나나', '수습사원', '여', curdate())
    , ('E22', '정오렌지', '수습사원', '여', curdate());

/*
	UPDATE(수정): 기존 행에 있는 데이터 값을 변경할 때 사용, 만약 UPDATE문에 WHERE절이 없으면 모든 행의 값이 변경되므로 주의
    
    MySQL에서는 테이블에서 키를 이용한 UPDATE 또는 DELETE만을 허용, 
    UPDATE나 DELETE문에서 WHERE절이 없거나 WHERE절에 키 컬럼 외의 컬럼을 사용한 조건문이 사용되면 오류가 발생
    해결방법: 워크벤치의 [Edit] - [Preferences] 메뉴에서 [SQL Editor] 선택 후 체크되어 있는 [Safe Updates] 항목 체크 해제
    - 이후 <OK>버튼 클릭 후 워크벤치 재실행
    
	UPDATE 테이블명
    SET 필드명1 = 필드값1
		, 필드명2 = 필드값2
	[WHERE 조건];
*/
update 사원
set 이름 = '김레몬'
where 사원번호 = 'E20'; # 사원번호가 PK(기준값)로 조건에 사용

update 제품
set 포장단위 = '200 ml bottles'
where 제품번호 = 91; # 제품번호가 PK(기준값)로 조건에 사용

update 제품
set 단가 = 단가 * 1.1 	# 단가를 10% 인상
	, 재고 = 재고 - 10	# 기존 재고에서 10을 뺌
where 제품번호 = 91; # 제품번호가 PK

/*
	DELETE(삭제): 기존에 있는 행을 삭제할 때 사용, 만약 DELETE문에 WHERE절이 없으면 모든 행이 삭제되므로 주의
	
    DELETE FROM 테이블명
    [WHERE 조건];
*/
delete from 제품
where 제품번호 = 91; # 제품번호가 PK

delete from 사원
order by 입사일 desc limit 3; # order by 필드명 desc limit 3: 필드명에 대한 필드값의 내림차순 중 위에서 3번 째까지 출력
  
/*
	INSERT ON DUPLICATE KEY UPDATE: 레코드가 없다면 새롭게 추가하고, 이미 있다면 데이터를 변경하는 경우에 사용
	 → 	데이터를 삽입할 때 중복된 키(PK(Primary Key) 혹은 UQ(Unique Key))가 이미 존재할 경우 해당 행을 업데이트하고,
		존재하지 않을 경우에는 새로운 행을 삽입
    
	INSERT INTO 테이블명(필드명1, 필드명2, 필드명3, ...)
	VALUES(필드값1, 필드값2, 필드값3, ...)
    ON DUPLICATE KEY UPDATE (→ 만약 중복되는 값이 있다면)
    필드명2 = 필드값2, 필드명3 = 필드값3, ...;
*/
insert into 제품(제품번호, 제품명, 단가, 재고)
values(91, '연어피클핫소스', 6000, 50) 			# 만약 제품번호(필드명) 91(PK)에 값이 없으면 (91, '연어 ~ 6000, 50) 해당 값을 삽입하고
on duplicate key update 					# 필드명(제품번호) 내의 PK(91)에 중복되는 값이 있다면
제품명 = '연어피클핫소스', 단가 = 6000, 재고 = 50; 	# PK 91에 제품명 = '연어피클...' ~ 재고 = 50;을 넣어서 수정

/*
	INSERT INTO SELECT: SELECT문의 결과를 다른 테이블에 삽입하려면 INSERT문에서 VALUES 대신 SELECT 문장을 넣음
	이때 SELECT문의 컬럼 수와 INSERT문에 있는 컬럼 수는 동일해야 하고, 순서도 같아야 함.
    
    INSERT INTO 테이블명(필드명A, 필드명B)
				SELECT 필드명1, 필드명2
				FROM 테이블명
                [WHERE 조건];
*/
# 고객주문요약 테이블 생성
CREATE TABLE 고객주문요약
(
 고객번호 CHAR(5) PRIMARY KEY
 , 고객회사명 VARCHAR(50)
 , 주문건수 INT
 , 최종주문일 DATE
);

# 레코드 삽입
insert into 고객주문요약
		select 고객.고객번호, 고객회사명, count(*), max(주문일)
        from 고객, 주문
        where 고객.고객번호 = 주문.고객번호
        group by 고객.고객번호, 고객회사명;
     
#결과 확인용     
select * from 고객주문요약;

/*
	UPDATE SELECT: UPDATE문에서 서브쿼리를 사용할 수 있음, 변경할 값을 얻기 위해서는 SET절에서 SELECT문을 사용
	서브쿼리의 SELECT문에는 '반드시' 별명을 붙여야 하고, 서브쿼리의 결과는 단일값이어야 함.
    
	UPDATE 테이블명
    SET 필드명 = (
				SELECT *
                FROM (
					  SELECT 필드A
                      FROM ...
                      ) AS 별명
				WHERE 조건
                );
                
	UPDATE 변경할_테이블명
			, 서브쿼리
	SET 필드명1 = 변경할_값
    WHERE 필드명2 IN (서브쿼리.컬럼);
*/
# 제품번호가 91인 제품의 단가를 '소스'제품들의 평균단가로 변경
update 제품
set 단가 = (
			select *
            from (
				  select avg(단가)
                  from 제품
                  where 제품명 like '%소스%'
                 ) as T # 서브쿼리의 SELECT문에는 반드시 별명을 붙여줘야 함
		  )
where 제품번호 = 91; # 제품번호가 PK

#결과 확인용
select * 
from 제품
where 제품번호 = 91;

# 한 번이라도 주문한 적이 있는 고객의 마일리지를 10% 인상
update 고객
	   , (
			select distinct 고객번호
            from 주문
		 ) as 주문고객
set 마일리지 = 마일리지 * 1.1
where 고객.고객번호 in (주문고객.고객번호);

#결과 확인용
select * 
from 고객
where 고객번호 in (select distinct 고객번호 from 주문);

/*
	UPDATE JOIN: INNER JOIN을 사용하여 다른 테이블의 행과 일치하는 행을 수정
    LEFT OUTER JOIN을 사용하여 그렇지 않은 행을 수정
    변경할 값에는 상수나 수식 뿐만 아니라 조인할 테이블에 있는 컬럼에 기반하여 값을 넣음
    
    UPDATE 변경할_테이블A
    [INNER|LEFT|OUTER] JOIN 조인할_테이블B
    ON 조인_조건
    SET 테이블A.필드명 = 필드값
    WHERE 기타_조건;
*/
# 마일리지등급이 'S'인 고객의 마일리지에 1000점씩 추가
update 고객
inner join 마일리지등급
on 마일리지 between 하한마일리지 and 상한마일리지
set 마일리지 = 마일리지 + 1000
where 등급명 = 'S';

#결과 확인용
select 고객번호, 고객회사명, 마일리지
from 고객
inner join 마일리지등급
on 마일리지 between 하한마일리지 and 상한마일리지
where 등급명 = 'S';

/*
	DELETE SELECT: DELETE문에서도 삭제할 레코드를 찾기 위하여 서브쿼리를 사용
    
    DELETE FROM 테이블A
    WHERE 필드명 IN (
				    SELECT 필드명
                    FROM 테이블B
                   );
*/
# 주문 테이블에는 존재하나 주문세부 테이블에는 존재하지 않는 주문번호를 주문 테이블에서 삭제
delete from 주문
where 주문번호 not in (
					 select distinct 주문번호
                     from 주문세부
                    );

/*
	DELETE JOIN: INNER JOIN을 사용하여 두 테이블에서 일치하는 행을 모두 삭제
    LEFT OUTER JOIN을 사용하여 일치하지 않는 행을 삭제
    
    DELETE 테이블A, 테이블B
    FROM 테이블A
    [INNER|LEFT|OUTER] JOIN 테이블B
    ON 조인_조건
    WHERE 삭제할_조건;
*/
# 주문, 주문세부 테이블에 주문번호 'H0248'이 존재하는지 확인
select *
from 주문
where 주문번호 = 'H0248';

select *
from 주문세부
where 주문번호 = 'H0248';

# 주문, 주문세부 테이블에 주문번호 'H0248'을 동시에 삭제
delete 주문, 주문세부
from 주문
inner join 주문세부
on 주문.주문번호 = 주문세부.주문번호
where 주문.주문번호 = 'H0248';

# 한 번도 주문한 적이 없는 고객 정보 검색
select 고객.*
from 고객
left outer join 주문
on 고객.고객번호 = 주문.고객번호
where 주문.고객번호 is null;

# 주문한 적이 없는 고객의 레코드를 고객 테이블에서 삭제
delete 고객
from 고객
left join 주문
on 고객.고객번호 = 주문.고객번호
where 주문.고객번호 is null;

# 삭제된 고객 정보가 고객 테이블에 존재하는지 확인
select *
from 고객
where 고객번호 in ('BQQZA', 'RISPA', 'SSAFI', 'TTRAN');

#2024-05-14------------------------------------------------------------------------------------------------------------
use 한빛무역;

/* 점검문제 */

/* 문제1 */
insert into 제품(제품번호, 제품명, 포장단위, 단가, 재고)
values(95, '망고베리 아이스크림', '400g', 800, 30);

# 문제1 확인용
select * from 제품
where 제품번호 = '95';

/* 문제2 */
insert into 제품(제품번호, 제품명, 단가)
values(96, '눈꽃빙수맛 아이스크림', 2000);

# 문제2 확인용
select * from 제품
where 제품번호 = '96';

/* 문제3 */
update 제품
set 재고 = '30' 
where 제품번호 = '96';

# 문제3 확인용
select * from 제품
where 제품번호 = '96';

select * from 부서;

/* 문제4 */
# 사원이 한 명도 없는 부서명
select 부서명, 사원번호
from 사원
right outer join 부서
on 사원.부서번호 = 부서.부서번호
where 사원.부서번호 is null;

# 사원이 한 명도 없는 부서명 삭제
delete 부서
from 부서
left join 사원
on 부서.부서번호 = 사원.부서번호
where 사원.부서번호 is null;

# 삭제 확인용
select *
from 부서;

/* PK 제약조건: null 값과 중복되는 값, duplicate 에러  */
/* PK 제약조건: null 값과 중복되는 값, duplicate 에러  */

/*
	데이터 정의어(Data Definition Language, DDL): 데이터베이스 내에서 테이블이나 인덱스, 뷰 등의 객체를 만들거나 수정, 삭제할 때 
    사용하는 언어로 CREATE, ALTER, DROP이 있음
    
    CHAR(최대 255Bytes): 고정길이 문자형 데이터타입(지정한 길이보다 데이터 길이가 작으면 빈칸 만큼 공백이 들어감)
    VARCHAR(최대 65,535Bytes): 가변길이 문자형 데이터타입(데이터의 길이만큼의 메모리만 차지)
    TEXT(최대 65,535Bytes): 길이를 지정하지 않음
    우선순위: CHAR > VARCHAR/ 사용은 VARCHAR > CHAR > TEXT
    
    TIMESTAMP는 내부적으로 시간을 가져올 때 시간대를 적용(즉, 데이터베이스가 글로벌 서비스에서 사용되면 TIMESTAMP 사용)
	★ TIMESTAMP		형식: YYYY-MM-DD HH:MI:SS	데이터 범위: 1970-01-01 00:00:01 UTC ~ 2038-01-19 03:14:07 UTC
*/
/*
    ★ Table 속성(Charset: utf8mb4, Engine: InnoDB)
    데이터베이스 생성)
    CREATE: 데이터베이스나 테이블, 뷰, 인덱스 등 객체를 만들 때 사용
    CREATE DATABASE [IF NOT EXISTS] 데이터베이스명;
*/
create database 한빛학사;

/*
    테이블 생성) 
    CREATE TABLE 테이블명
    (
		필드명1 데이터타입		# 모든 컬럼에는 데이터타입을 지정해줘야 함
        , 필드명2 데이터타입
    );
*/    
create table 학과
(
	학과번호 CHAR(2)
    , 학과명 VARCHAR(20)
    , 학과장명 VARCHAR(20)
);

create table 학생
(
	학번 CHAR(5)
    , 이름 VARCHAR(20)
    , 생일 DATE
    , 연락처 VARCHAR(20)
    , 학과번호 CHAR(2)
);

INSERT INTO 학생
VALUES('S0001', '이윤주', '2020-01-30', '01033334444', 'A4')
, ('S0002', '이승은', '2021-02-23', NULL, 'AA')
, ('S0003', '백재용', '2018-03-31', '01077778888', 'DD');

/*  테이블의 구조와 데이터 복사)
    CREATE TABLE 테이블명 AS
    SELECT문;
    
    ★ WHERE 1 = 2;(명령어): 데이터는 가져오지 않고, 구조만 가져옴 */
create table 휴학생 as
select * from 학생 where 1 = 2;

/* 	GENERATED 컬럼: 테이블에 있는 컬럼을 기반으로 하여 계산된 값을 저장할 수 있는 컬럼 
	컬럼 데이터타입 [GENERATED ALWAYS] AS 계산식 [VIRTUAL | STORED]
    
POWER(A, B): 숫자A의 숫자B 제곱승 */

/* DECIMAL(A, B): 전체 자릿수 A(65까지 표현), 소수점 자릿수 B(30까지 표현), 고정 소수점 형식(DEC, NUMERIC) */
create table 회원
(
	아이디 varchar(20) primary key
    , 회원명 varchar(20)
    , 키 int
    , 몸무게 int
    , 체질량지수 decimal(4, 1) as (몸무게 / power(키 / 100, 2)) stored
);

insert into 회원(아이디, 회원명, 키, 몸무게)
values('APPLE', '김사과', 178, 70);

/* ADD 컬럼추가) ALTER TABLE 테이블명 ADD COLUMN new_컬럼명 데이터타입; */
alter table 학생 add 성별 char(1);

/* MODIFY 컬럼 데이터타입 변경) ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 new_데이터타입; */
alter table 학생 modify column 성별 varchar(2);

/* CHANGE 컬럼명 변경) ALTER TABLE 테이블명 CHANGE COLUMN old_컬럼명 new_컬럼명 데이터타입; */
alter table 학생 change column 연락처 휴대폰번호 varchar(20);

/* 	delete 구조는 남아있으나 내부의 데이터만 삭제, drop: 필드와 내부의 데이터 전부 삭제 
	DROP 컬럼 삭제) ALTER TABLE 테이블명 DROP COLUMN 컬럼명; */
alter table 학생 drop column 성별;

/* RENAME 테이블명 변경) t_membert_membert_movieALTER TABLE old_테이블명 RENAME new_테이블명; */
alter table 휴학생 rename 졸업생;

/* 	DROP: 데이터베이스, 테이블 및 기타 여러 객체를 삭제할 때 사용
	DROP DATABASE 데이터베이스명;
    DROP TABLE 테이블명; */
drop table 학과;
drop table 학생;

/* 	
	제약조건) 데이터 사전에 저장, 고유한 이름을 붙여서 식별, 한 컬럼에 여러 개의 제약조건을 설정,
			CREATE문으로 테이블을 생성할 때 지정, ALTER문으로 테이블의 구조를 변경할 때 지정
	CREATE TABLE 테이블명
	(
		컬럼1 데이터타입 제약조건   # 방법1
        
        , 컬럼2 데이터타입   # 방법2
        , 제약조건(컬럼2)
    );
    UNIQUE: 중복된 값 불가
    CHECK(필드명 IN (A, B)): 해당 필드에는 A또는 B, Null만 들어갈 수 있음(NN(Not Null)이 있으면 A 또는 B만 들어갈 수 있음)
    check(필드명 between A and B): 해당 필드에는 A부터 B까지만 들어갈 수 있음.
    REFERENCES 테이블명(필드명): 테이블의 필드열을 참조
    FOREIGN KEY: 외래키
    AUTO_INCREMENT(INT형): 일련번호(숫자), MySQL에서 가능(Oracle에서는 불가)
*/
# 제약조건 방법1: 컬럼 레벨의 제약조건 설정
create table 학과
(
	학과번호 char(2) primary key
    , 학과명 varchar(20) not null
    , 학과장명 varchar(20)
);

# 제약조건 방법2: 테이블 레벨로 제약조건 설정
create table 학과
(
	학과번호 char(2)
    , 학과명 varchar(20) not null
    , 학과장명 varchar(20)
    , primary key(학과번호)
);

/* 제약조건을 추가하여 학생 테이블 생성 */
# 방법1
create table 학생
(
	학번 char(5) primary key
    , 이름 varchar(20) not null
    , 생일 date not null
    , 연락처 varchar(20) unique	# unique: 중복 값 불가
    , 학과번호 char(2) references 학과(학과번호)
    , 성별 char(1) check(성별 in ('남', '여'))
    , 등록일 date default(curdate())
    , foreign key(학과번호) references 학과(학과번호)	# 학과 테이블에 학과번호 필드 내 값이 있어야 함.(주소값 참조)
);

# 방법 2
create table 학생
(
	학번 char(5)
    , 이름 varchar(20) not null
    , 생일 date not null
    , 연락처 varchar(20)
    , 학과번호 char(2)
    , 성별 char(1)
    , 등록일 date default(curdate())
    , primary key(학번)
    , unique(연락처)
    , check(성별 in ('남', '여'))
    , foreign key (학과번호) references 학과(학과번호)
);

/* 제약조건을 추가하여 과목 테이블 생성 */
# 방법1
create table 과목
(
	과목번호 char(5) primary key	# PK에는 NN포함
    , 과목명 varchar(20) not null
    , 학점 int not null check(학점 between 2 and 4)
    , 구분 varchar(20) check(구분 in('전공', '교양', '일반'))
);

# 방법2
create table 과목
(
	과목번호 char(5)
    , 과목명 varchar(20) not null # NN(Not Null): 필수 입력(Null 불가)
    , 학점 int not null
    , 구분 varchar(20)
    , primary key(과목번호)
    , check(학점 between 2 and 4)
    , check(구분 in('전공','교양','일반'))
);

# 제약조건 추가, 수강_1 테이블 생성, 기본키는 수강년도, 수강학기, 학번, 과목 모두 포함
create table 수강_1
(
	수강년도 char(4) not null
    , 수강학기 varchar(20) not null check(수강학기 in('1학기', '2학기', '여름학기', '겨울학기'))
    , 학번 char(5) not null
    , 과목번호 char(5) not null
    , 성적 decimal(3, 1) check(성적 between 0 and 4.5)
    , primary key(수강년도, 수강학기, 학번, 과목번호) # 일반적으로 좋은 방법은 아님, 일련번호 생성하여 처리
    , foreign key(학번) references 학생(학번)
    , foreign key(과목번호) references 과목(과목번호)
);

# 수강번호 대리키를 기본으로 하는 제약조건 추가, 수강번호는 자동으로 일련번호 생성(★ AUTO_INCREMENT)
# ★ AUTO_INCREMENT: 자동으로 일련번호를 생성하므로 별도로 값을 넣으면 오류가 발생
create table 수강_2
(
	수강번호 int primary key auto_increment # 이처럼 묶은 뒤 auto_increment 사용
    , 수강년도 char(4) not null
    , 수강학기 varchar(20) not null check(수강학기 in('1학기', '2학기', '여름학기', '겨울학기'))
    , 학번 char(5) not null
    , 과목번호 char(5) not null
    , 성적 decimal(3, 1) check(성적 between 0 and 4.5)
    , foreign key (학번) references 학생(학번)
    , foreign key (과목번호) references 과목(과목번호)
);

# 학과 테이블에 레코드 3건 추가
insert into 학과
values ('AA', '컴퓨터공학과', '배경민');

insert into 학과
values ('BB', '소프트웨어학과', '김남준'); # 학과 테이블 내 학과번호('BB')는 PK로 중복된 값 불가(기존 'AA' → 'BB'로 수정)

insert into 학과
values ('CC', '디자인융합과', '박선영');

# 학생 테이블에 레코드 3건 추가
insert into 학생(학번, 이름, 생일, 학과번호)
values ('S0001', '이윤주', '2020-01-30', 'AA');

/*
	insert into 학생(이름, 생일, 학과번호)	# PK인 학번이 없어서 오류
	values ('이승은', '2021-02-23', 'AA'); 
*/
insert into 학생(학번, 이름, 생일, 학과번호)
values ('S0002', '이승은', '2021-02-23', 'AA');

/*
	insert into 학생(학번, 이름, 생일, 학과번호)
	values ('S0003', '백재용', '2018-03-31', 'DD');
	# 학생 테이블 내 학과번호는 'foreign key (학과번호) references 학과(학과번호)'로 외래키인 상황에서
	학과 테이블 내 학과번호 필드값으로 'DD'가 없어서 오류 
*/
insert into 학생(학번, 이름, 생일, 학과번호)
values ('S0003', '백재용', '2018-03-31', 'CC');

/* insert into 과목(과목번호, 과목명, 구분) # 학점이 NN인데 Null이라 오류
values ('C0001', '데이터베이스실습', '전공'); */
insert into 과목(과목번호, 과목명, 구분, 학점)
values ('C0001', '데이터베이스실습', '전공', 3);

/* insert into 과목(과목번호, 과목명, 구분, 학점) 
values ('C0002', '데이터베이스 설계와 구축', '전공', 5); # 학점의 범위(2 ~ 4) 초과하여 오류 */
insert into 과목(과목번호, 과목명, 구분, 학점)
values ('C0002', '데이터베이스 설계와 구축', '전공', 4);

insert into 과목(과목번호, 과목명, 구분, 학점)
values ('C0003', '데이터 분석', '전공', 3);

insert into 수강_1(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0001', 4.3);

/* insert into 수강_1(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0001', 4.5); 위 코드와 수강_1의 PK값이 동일하여 INSERT 불가*/

/* insert into 수강_1(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0001', 4.6 ); # 성적의 범위(0 ~ 4.5) 초과 */

/* insert into 수강_1(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0009', 4.3); 
# 과목번호는 'foreign key(과목번호) references 과목(과목번호)'로 참조값이나 과목.과목번호에 'C0009'은 없어서 오류 */

insert into 수강_2(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0001', 4.3);

insert into 수강_2(수강년도, 수강학기, 학번, 과목번호, 성적)
values('2023', '1학기', 'S0001', 'C0001', 4.5);

/* 	제약조건의 추가)
	ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건(컬럼명);
    ALTER TABLE 테이블명 ADD CHECK 제약조건(컬럼명); */
alter table 학생 add constraint check(학번 like 'S%');

# 학생 테이블에 설정되어 있는 제약조건 명세를 확인
select *
from information_schema.table_constraints
where constraint_schema = '한빛학사'
and table_name = '학생';

/* 	제약조건의 삭제)
	ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명; */
alter table 학생 drop constraint 연락처;

alter table 학생 drop constraint 학생_chk_1;
alter table 학생 drop constraint 학생_chk_2;
alter table 학생 add check (학번 like 'S%');

/* 	
	제약조건명의 지정)
	컬럼 레벨: 컬럼명 데이터타입 [CONSTRAINT 제약조건명] 제약조건
    테이블 레벨: [CONSTRAINT 제약조건명] 제약조건
    제약조건명: '제약조건_테이블명_필드명'으로 설정하면 추후 제약조건을 찾기가 수월(수정, 삭제 등)
*/

create table 학생_2
(
	학번 char(5)
    , 이름 varchar(20) not null
    , 생일 date not null
    , 연락처 varchar(20)
    , 학과번호 char(2)
    , 성별 char(1)
    , 등록일 date default(curdate())
    , primary key(학번)
    , constraint uk_학생2_연락처 unique(연락처)
    , constraint ck_학생2_성별 check(성별 in('남', '여'))
    , constraint fk_학생2_학과번호 foreign key (학과번호) references 학과(학과번호)
);

# 제약조건 명세 확인
select *
from information_schema.table_constraints
where constraint_schema = '한빛학사'
and table_name = '학생_2';

/*
	★ CURRENT_TIMESTAMP: 현재 날짜와 시간을 반환
    ON DELETE CASCADE: (외래 키 제약 조건을 정의할 때 사용)부모 테이블에서 행을 삭제할 때 자식 테이블의 해당 행들도 자동 삭제
*/
create table 수강평가
(
	평가순번 int primary key auto_increment
    , 학번 char(5) not null
    , 과목번호 char(5) not null
    , 평점 int check(평점 between 0 and 5)
    , 과목평가 varchar(500)
    , 평가일시 timestamp default current_timestamp
    , foreign key (학번) references 학생(학번)
    , foreign key (과목번호) references 과목(과목번호) on delete cascade
);

# 수강평가 테이블에 4건의 레코드 추가
insert into 수강평가(학번, 과목번호, 평점, 과목평가)
values('S0001', 'C0001', 5, 'SQL학습에 도움이 되었습니다.')
, ('S0001', 'C0003', 5, 'SQL 활용을 배워서 좋았습니다.')
, ('S0002', 'C0003', 5, '데이터 분석에 관심이 생겼습니다.')
, ('S0003', 'C0003', 5, '머신러닝과 시각화 부분이 유용했습니다.');

SELECT * FROM 수강평가;

delete from 과목 where 과목번호 = 'C0003';

select * from 과목;
select * from 수강평가;

/*
	delete from 과목 where 과목번호 = 'C0001';
	수강_1에서 'C0001'을 참조해서 사용하고 있기 때문에 삭제되지 않음.
*/

/* 융합 점검 문제 */
# 회원_테이블 생성
create table 회원_테이블
(
	아이디 char(5) primary key
    , 이름 char(5)
    , 생년 int check(생년 between 1900 and 2000)
    , 지역 char(5)
    , 국번 int
    , 전화번호 varchar(20)
    , 키 int check(키 between 100 and 250)
    , 가입일 varchar(20)
);

# 구매_테이블 생성
create table 구매_테이블
(
	순번 int primary key auto_increment
    , 아이디 char(5)
    , 물품 varchar(10)
    , 분류 char(5)
    , 단가 int
    , 수량 int
    , foreign key (아이디) references 회원_테이블(아이디)
);

# 회원_테이블 정보 입력
insert into 회원_테이블(아이디, 이름, 생년, 지역, 국번, 전화번호, 키, 가입일)
values('YJS', '유재석', 1972, '서울', 010, '11111111', 178, '2008.8.8')
, ('KHD', '강호동', 1970, '경북', 011, '22222222', 182, '2007.7.7')
, ('KKJ', '김국진', 1965, '서울', 019, '33333333', 171, '2009.9.9')
, ('KYM', '김용만', 1967, '서울', 010, '44444444', 177, '2015.5.5')
, ('KJD', '김제동', 1974, '경남', NULL, NULL, 173, '2013.3.3')
, ('NHS', '남희석', 1971, '충남', 016, '66666666', 180, '2017.4.4')
, ('SDY', '신동엽', 1971, '경기', NULL, NULL, 176, '2008.10.10')
, ('LHJ', '이휘재', 1972, '경기', 011, '88888888', 180, '2006.4.4')
, ('LKK', '이경규', 1960, '경남', 018, '99999999', 170, '2004.12.12')
, ('PSH', '박수홍', 1970, '서울', 010, '00000000', 183, '2012.5.5');

SELECT * FROM 회원_테이블;

insert into 구매_테이블(아이디, 물품, 분류, 단가, 수량)
values('KHD', '운동화', NULL, 30, 2)
, ('KHD', '노트북', '전자', 1000, 1)
, ('KYM', '모니터', '전자', 200, 1)
, ('PSH', '모니터', '전자', 200, 5)
, ('KHD', '청바지', '의류', 50, 3)
, ('PSH', '메모리', '전자', 80, 10)
, ('KJD', '책', '서적', 15, 5)
, ('LHJ', '책', '서적', 15, 2)
, ('LHJ', '청바지', '의류', 50, 1)
, ('PSH', '운동화', NULL, 30, 2)
, ('LHJ', '책', '서적', 15, 1)
, ('PSH', '운동화', NULL, 30, 2);

SELECT * FROM 구매_테이블;

#2024-05-16------------------------------------------------------------------------------------------------------------
use 한빛학사;
use 한빛무역;

/* 점검문제 */

/* 문제1 */
select * from 제품;
alter table 제품 add constraint check(재고 >= 0);

# 문제1 확인용
select * 
from information_schema.table_constraints
where constraint_schema = '한빛무역'
and table_name = '제품';

/* 문제2 */
alter table 제품 add column 재고금액 int;
update 제품
set 재고금액 = 단가 * 재고;

# 문제2 확인용
select * from 제품;

/* 문제3 */
alter table 주문세부 add constraint foreign key (제품번호) references 제품(제품번호) on delete cascade;

# 문제3 확인용
select * 
from information_schema.table_constraints
where constraint_schema = '한빛무역'
and table_name = '주문세부';

/*	뷰의 장점: 데이터 중복성 최소화, 데이터 보안성, 간편한 데이터 접근, 데이터 가상화
    뷰에서 뷰를 생성할 수도 있음
    뷰 생성 1번 사항: PK 넣어서 생성, 2번 사항: WITH CHECK OPTION
	뷰 생성)
	  1. OR REPLACE
	    CREATE [OR REPLACE] VIEW 뷰명
        AS
        SELECT문;
    
      2. ALTER
        ALTER VIEW 뷰명
        AS
        SELECT문; */
# 컬럼명에 별명 붙이기(뷰를 사용할 때에는 컬럼명에 붙인 별명 사용)
create or replace view view_사원
as
select 이름, 집전화 as 전화번호, 입사일, 주소 from 사원;

# 컬럼 또는 컬럼의 별명을 뷰 이름 옆에 나열
create or replace view view_사원(이름, 전화번호, 입사일, 주소)
as
select 이름, 집전화, 입사일, 주소 from 사원;

# 생성한 뷰 조회
select * from view_사원;

create or replace view view_제품별주문수량합
as
select 제품명, sum(주문수량) as 주문수량합 
from 제품
inner join 주문세부
on 제품.제품번호 = 주문세부.제품번호
group by 제품명;

select * from view_제품별주문수량합;

create or replace view view_사원_여
as
select 이름, 집전화 as 전화번호, 입사일, 주소, 성별
from 사원
where 성별 = '여';

select * from view_사원_여;

/*	뷰 조회) SELECT * FROM 뷰명; */
select * from view_사원_여
where 전화번호 like '%88%';

select * from view_제품별주문수량합
where 주문수량합 >= 1200;

/* 	뷰 메타 정보 확인)
	  1. INFORMATION_SCHEMA.VIEWS(표준형태)
	    SELECT * FROM INFROMATION_SCHEMA.VIEWS
	    WHERE TABLE_NAME = '뷰명';
      2. SHOW CREATE VIEW
        SHOW CREATE VIEW 뷰명; */
select *
from information_schema.views	# 표준형태
where table_name = 'view_사원';

show create view view_사원;

/* 	뷰 삭제) DROP VIEW 뷰명; */
drop view view_사원;

/* insert into view_사원_여(이름, 전화번호, 입사일, 주소, 성별)
values('황여름', '(02)587-4989', '2023-02-10', '서울시 강남구 청담동 23-5', '여');
*오류 발생, 원천 테이블에 PK 포함하여 생성하거나 WITH CHECK OPTION 사용 */

create or replace view view_사원_여 # 해당 방법을 선호
as
select 사원번호 # PK
	, 이름
    , 집전화 as 전화번호
    , 입사일
    , 주소
    , 성별
from 사원
where 성별 = '여';

alter view view_사원_여 # 여기서의 ALTER는 CREATE 개념으로 가능하나 권장하지 않고, CREATE OR REPLACE 방법으로 사용
as
select 사원번호, 이름, 집전화 as 전화번호, 입사일, 주소, 성별
from 사원
where 성별 = '여';

# 사원번호(PK) 값이 기존 'E12'가 있어서 Duplicate 오류 메시지
insert into view_사원_여(사원번호, 이름, 전화번호, 입사일, 주소, 성별)
values('E12', '황여름', '(02)587-4989', '2023-02-10', '서울시 강남구 청담동 23-5', '여');

# 뷰를 통한 레코드 삽입 확인
select * from view_사원_여
where 사원번호 = 'E12';

# 뷰를 사용하여 레코드를 추가했으나 실제로는 사원 테이블에 레코드가 삽입됨
select * from 사원
where 사원번호 = 'E12';

# 뷰는 가상 테이블로 값을 직적 입력할 수 없음
insert into view_제품별주문수량합
values('단짠 새우깡', 250);

/* 	종속성(종속관계) 제거)
	★ WITH CHECK OPTION: 뷰에서 사용하는 옵션 중 하나로, INSERT 또는 UPDATE 작업을 수행할 때 해당 작업으로 인해 뷰에서 정의한 조건을
    만족하지 않는 행이 생성되거나 수정되는 것 방지, 이를 사용하면 뷰를 통해 데이터를 수정하거나 삽입할 때 뷰의 조건을 만족하는 데이터만 작업이 가능
    CREATE [OR REPLACE] VIEW 뷰명
    AS
    SELECT문
    WITH CHECK OPTION; */
insert into view_사원_여(사원번호, 이름, 입사일, 주소, 성별)
values('E13', '강겨울', '2023-02-10', '서울시 성북구 장위동 123-7', '남');

# 삽입된 레코드 확인(삽입은 정상적으로 이루어졌으나 검색되지 않음)
select *
from view_사원_여
where 사원번호 = 'E13';

# 테이블에는 존재
select * from 사원 
where 사원번호 = 'E13';


create or replace view view_사원_여
as
select 사원번호, 이름, 집전화 as 전화번호, 입사일, 주소, 성별
from 사원
where 성별 = '여'
with check option;

# 성별로 인해 오류(원천 테이블도 추가되지 않음)
insert into view_사원_여(사원번호, 이름, 성별)
values('E14', '유봄', '남'); 

# 성별로 인해 오류(원천 테이블도 추가되지 않음)
update view_사원_여
set 성별 = '남' 
where 이름 = '황여름';

/* 	인덱스(Index): 데이터베이스 테이블에서 특정 컬럼이나 컬럼의 집합에 대한 검색 성능을 향상시키기 위해 사용되는 자료구조
	(방대한 양의 데이터를 검색할 때 속도를 빠르게 하기 위해서 사용, 외부에서 검색하는 것에 대한 결과값에는 영향을 주지 않음)
	B-트리 인덱스: 가장 일반적으로 사용되는 인덱스 형식으로 좌우 자식 간에 항상 균형을 이루는 균형 트리(Balanced Tree)
    B-트리에서 노드(Node)는 블록(Block) 또는 페이지(Page)로 부름
	
    인덱스의 장점: 검색 속도 향상, 정렬 및 순서 유지, 중복 제거, 조인 및 쿼리 성능 향상 

 	클러스터형 인덱스(Clustered Index): 기본 인덱스, 
	기본키 컬럼(한 테이블당 하나의 열에만 설정이 가능)에 대해 행 데이터가 오름차순으로 정렬되는 인덱스 
	
    비클러스터형 인덱스(Non-Clustered Index): 보조 인덱스, 책의 찾아보기 페이지와 유사 */

/* 	인덱스 생성)
	방법1.(권장하는 방법) CREATE [UNIQUE] INDEX 인덱스명 ON 테이블명(컬럼명);
    방법2.(권장하지 않는 방법) 테이블 생성하면서 인덱스 생성
    CREATE TABLE 테이블명
    (
	 컬럼1 데이터타입
	 , 컬럼2 데이터타입
     , 컬럼3 데이터타입
     , 컬럼4 데이터타입
     , PRIMARY KEY(컬럼1, 컬럼2, 컬럼3)
     , INDEX 인덱스명 (컬럼4)
    )
    
    테이블에 인덱스 추가)
    ALTER TABLE 테이블명 ADD INDEX 인덱스명 (컬럼명);
    
    테이블에서 인덱스 삭제)
    ALTER TABLE 테이블명 DROP INDEX 인덱스명 (컬럼명);
    
    테이블에 걸려있는 인덱스 확인)
    SHOW INDEX FROM 테이블명; */
create table 날씨
(
 년도 int
 , 월 int
 , 일 int
 , 도시 varchar(20)
 , 기온 decimal(3, 1)
 , 습도 int
 , primary key(년도, 월, 일, 도시) 	# Clustered Index
 , index 기온인덱스(기온) 			# Non-Clustered Index
 , index 도시인덱스(도시) 			# Non-Clustered Index
);

# 검색
select * from 사원 where 부서번호 = 'A2';

# 인덱스 생성 후 검색(속도 비교)
create index idx_사원 on 사원(부서번호);
select * from 사원 where 부서번호 = 'A2';

/* 	★ 변수(사용자 정의 변수, 로컬 변수, 시스템 변수)
	사용자 정의 변수(@): @를 접두사로 사용, SET으로 선언 후 값 할당
    로컬 변수: DECLARE문을 사용하여 선언, SELECT이나 SET을 사용하여 값 할당
    시스템 변수(@@): @@를 접두사로 사용, SET으로 선언 후 값 할당 */

/* 	IF문
	IF 조건1 THEN
		조건1이 참일 때 실행할 코드
	[ELSEIF 조건2 THEN
		조건2가 참일 때 실행할 코드]
	[ELSE
		모든 조건이 참이 아닐 때 실행할 코드]
	END IF; */

/* 	DELIMITER $$
	~
     END $$
    DELIMITER ; : DELIMITER $$ ~ END $$까지의 부분을 하나의 문장으로 취급, DELIMITER ; 이후부터는 다시 ;로 하나의 문장 취급 */
# IF문을 사용하여 두 개의 숫자 10과 5의 크기를 비교하는 프로시저 작성
delimiter $$
create procedure proc_if()
	begin
		declare x int;
        declare y int default 5;
        set x = 10;
        
        if x > y then
			select 'x는 y보다 큽니다.' as 결과;
		else
			select 'x는 y보다 작거나 같습니다.' as 결과;
		end if;
	end $$
delimiter ;

# 작성한 스토어드 프로시저 CALL 사용하여 실행
call proc_if();

/*	CASE 
		WHEN 조건1 THEN
			조건1이 참일 때 실행할 코드
		[WHEN 조건2 THEN
			조건2가 참일 때 실행할 코드]
		[ELSE
			모든 조건이 참이 아닐 때 실행할 코드]
	END CASE; */

# CASE문을 사용하여 숫자 10이 짝수인지 홀수인지 판별하는 프로시저 작성
delimiter $$
create procedure proc_case()
	begin
		declare x int default 10;
        declare y int;
        set y = 10 mod 2; # 10을 2로 나눈 나머지
        
        case
			when y = 0 then
				select 'x는 짝수입니다.' as '결과';
			else
				select 'x는 홀수입니다.' as '결과';
		end case;
	end $$
delimiter ;

# 작성한 프로시저 실행
call proc_case();

/* 	WHILE 조건 DO
		반복적으로 실행할 코드
	END WHILE; */
    
# WHILE문으로 1부터 10까지의 합을 출력하는 프로시저 작성
delimiter $$
create procedure proc_while()
	begin
		declare x int default 0;
        declare y int default 0;
        
        while x < 10 do
			set x = x + 1;
            set y = y + x;
		end while;
        select x, y;
	end $$
delimiter ;

# 작성한 프로시저 실행
call proc_while();

/* 	레이블명:LOOP
		반복적으로 실행할 코드
        IF 조건 THEN
			LEAVE 레이블명;
		END IF;
	END LOOP; */

# LOOP문으로 1부터 10까지의 합을 출력하는 프로시저 작성
delimiter $$
create procedure proc_loop()
	begin
		declare x int default 0;
        declare y int default 0;
        
        loop_sum:loop
			set x = x + 1;
            set y = y + x;
            if x > 10 then
				leave loop_sum;
			end if;
            select x, y;
		end loop;
	end $$
delimiter ;

# 프로시저 실행
call proc_loop();

/*	REPEAT
		반복적으로 실행할 코드
	UNTIL 조건; */

# REPEAT문으로 1부터 10까지의 합을 출력하는 프로시저 작성
delimiter $$
create procedure proc_repeat()
	begin
		declare x int default 0;
		declare y int default 0;
		
		repeat
			set x = x + 1;
			set y = y + x;
		until x >= 10 end repeat;
		select x, y;
	end $$
delimiter ;

# 프로시저 실행
call proc_repeat();

/*	사용자 정의 프로시저의 생성, 호출 삭제
	프로시저는 IN, OUT, INOUT 매개변수로 값을 줌
	생성)
    DELIMITER $$
    CREATE PROCEDURE 사용자_정의_프로시저명
		(
         [IN|OUT|INOUT]
        )
    BEGIN
		실행코드
	END $$
    DELIMITER ;
    
    호출) CALL 프로시저명;
    
    삭제) DROP PROCEDURE 프로시저명; */

# 고객 정보와 고객 수를 보이는 프로시저 작성
delimiter $$
create procedure proc_고객정보()
	begin
		select *
        from 고객;
        
        select count(*) as 고객수
        from 고객;
	end $$
delimiter ;

# 프로시저 실행
call proc_고객정보();

# 도시를 입력하면 해당 도시의 고객 정보와 고객 수를 보이는 프로시저 작성
delimiter $$
create procedure proc_도시고객정보
	(
		in city varchar(50) # 매개변수 값은 50자 내의 varchar형으로 받음
    )
    begin
		select *
        from 고객
        where 도시 = city;
        select count(*) as 고객수
        from 고객
        where 도시 = city;
	end $$
delimiter ;

# 프로시저 실행
call proc_도시고객정보('부산광역시'); # 매개변수 varchar형으로 줌

# 주문년도와 고객의 도시를 입력하면 해당 년도에 해당 도시의 고객이 주문한 내역에 대하여 주문고객별로 주문건수를 보이는 프로시저 작성
delimiter $$
create procedure proc_주문년도도시_고객정보
	(
		in order_year int		# 매개변수로 (int, varchar)를 받음
        , in city varchar(50)
    )
    begin
		select 고객.고객번호, 고객회사명, 도시, count(*) as 주문건수
        from 고객 join 주문
        on 고객.고객번호 = 주문.고객번호
        where year(주문일) = order_year
        and 도시 = city
        group by 고객.고객번호, 고객회사명;
	end $$
delimiter ;

# 프로시저 실행
call proc_주문년도도시_고객정보(2021, '공주시');

# 고객회사명과 추가할 마일리지를 입력하면 해당 고객에 대하여 입력한 마일리지 만큼 추가하는 프로시저 작성
delimiter $$
create procedure proc_고객회사명_마일리지추가
	(
		in company varchar(50)		# 매개변수로 (varchar, int)를 받음
        , in add_mileage int
    )
    begin
		select 고객번호, 고객회사명, 마일리지 as 변경_전_마일리지
        from 고객
        where 고객회사명 = company;
        
        update 고객
        set 마일리지 = 마일리지 + add_mileage
        where 고객회사명 = company;
        
        select 고객번호, 고객회사명, 마일리지 as 변경_후_마일리지
        from 고객
        where 고객회사명 = company;
	end $$
delimiter ;

# 프로시저 실행
call proc_고객회사명_마일리지추가('진영무역', 1000);

# 고객회사명을 입력하면 해당 고객의 마일리지를 변경하는 프로시저 작성(고객의 마일리지가 전체 고객의 평균 마일리지보다 크면 100점 추가, 아니면 평균 마일리지 만큼으로 변경)
delimiter $$
create procedure proc_고객회사명_평균마일리지로_변경
	(
		in company varchar(50)		# 매개변수 varchar로 받음
    )
    begin
		declare 평균마일리지 int;
        declare 보유마일리지 int;
        
        select 고객회사명, 마일리지 as 변경_전_마일리지
        from 고객
        where 고객회사명 = company;
        
        set 평균마일리지 = (select avg(마일리지) from 고객);
        set 보유마일리지 = (select 마일리지 from 고객 where 고객회사명 = company);
        
        if (보유마일리지 > 평균마일리지) then
			update 고객
            set 마일리지 = 마일리지 + 100
            where 고객회사명 = company;
		else
			update 고객
            set 마일리지 = 평균마일리지
            where 고객회사명 = company;
		end if;
        
        select 고객회사명, 마일리지 as 변경_후_마일리지
        from 고객
        where 고객회사명 = company;
	end $$
delimiter ;

# 프로시저 실행
call proc_고객회사명_평균마일리지로_변경('굿모닝서울');

# 고객회사명을 입력하면 고객의 보유 마일리지에 따라서 등급을 보이는 프로시저 작성(고객의 마일리지가 100,000점 이상이면 '최우수고객회사', 50,000점 이상이면 '우수고객회사', 나머지는 '관심고객회사')
delimiter $$
create procedure proc_고객등급
	(
		in company varchar(50)
        , out grade varchar(20)		# 여기서의 out이 return 역할
    )
    begin
		declare 보유마일리지 int;
        
        select 마일리지
        into 보유마일리지
        from 고객
        where 고객회사명 = company;
        
        if 보유마일리지 > 100000 then
			set grade = '최우수고객회사';
		elseif 보유마일리지 >= 50000 then
			set grade = '우수고객회사';
		else
			set grade = '관심고객회사';
		end if;
	end $$
delimiter ;

# 프로시저 실행
call proc_고객등급('그린로더스', @그린로더스등급);
call proc_고객등급('오뚜락', @오뚜락등급);

select @그린로더스등급, @오뚜락등급;

# 인상율과 금액을 입력하면 인상금액을 계산, 그 결과를 확인하는 프로시저
delimiter $$
create procedure proc_인상금액
	(
		in increase_rate int
        , inout price int
    )
    begin
		set price = price * (1 + increase_rate / 100);
	end $$
delimiter ;

# 프로시저 실행 결과 확인
set @금액 = 10000;
call proc_인상금액(10, @금액);
select @금액;

call proc_인상금액(10, @금액);
select @금액;

/*	사용자 정의 함수의 생성, 실행, 삭제
	함수는 RETURN 값이 있음
	생성)
    DELIMITER $$
	CREATE FUNCTION 사용자_정의_함수명(매개변수)
    RETURNS 반환형식
    BEGIN
		실행코드
        RETURN 반환값;
	END $$
	DELIMITER ;
    
    실행) SELECT 함수명();
    
    삭제) DROP FUNCTION 함수명; */

# 수량과 단가를 입력하면 두 수를 곱하여 금액을 반환하는 함수 생성
delimiter $$
create function func_금액(quantity int, price int)
	returns int 	# 반환형이 int가 아닌 다르면 X
begin
	declare amount int;
    set amount = quantity * price;
    return amount;
end $$
delimiter ;

# 실행 결과 확인
select func_금액(100, 4500);

select *, func_금액(주문수량, 단가) as 주문금액 from 주문세부;

/*	트리거(Trigger): 데이터베이스에서 데이터 삽입, 변경 또는 삭제와 같은 특정 이벤트가 발생할 때마다 자동으로 실행되는 작업
	트리거 생성, 삭제
    생성)
    DELIMITER $$
    CREATE TRIGGER 트리거명							# INSERT: OLD.컬럼명(X), NEW.컬럼명(O)/ UPDATE: OLD.컬럼명(O), NEW.컬럼명(O)
    BEFORE|AFTER INSERT|UPDATE|DELETE ON 테이블명		# DELETE: OLD.컬럼명(O), NEW.컬럼명(X)
    FOR EACH ROW 									# 트리거를 행단위로 작성하기 때문에 'FOR EACH ROW' 작성
    BEGIN
		실행코드
	END $$
    DELIMITER ;
    
    생성 확인) SHOW 트리거명;
    
    삭제) DROP TRIGGER 트리거명; */

# 제품로그 테이블 생성 
create table 제품로그
(
	로그번호 int auto_increment primary key
    , 처리 varchar(10)
    , 내용 varchar(100)
    , 처리일 timestamp default current_timestamp
);

# 제품 추가할 때마다 로그 테이블에 정보를 남기는 트리거 작성
delimiter $$
create trigger trigger_제품추가로그
after insert on 제품		# 제품을 추가한 뒤(after) 정보를 남기는(insert)
for each row		# 트리거를 행 단위로 작성하기 때문에 'for each row'작성
begin
	insert into 제품로그(처리, 내용)
	values('INSERT', CONCAT('제품번호:', NEW.제품번호, '제품명:', NEW.제품명));
end $$
delimiter ;

# 트리거 동작 여부 확인
insert into 제품(제품번호, 제품명, 단가, 재고)
values(99, '레몬캔디', 2000, 10);

select * from 제품 where 제품번호 = 99;

select * from 제품로그;

# 제품 테이블에서 단가나 재고가 변경되면 변경된 사항을 제품로그 테이블에 저장하는 트리거 작성
delimiter $$
create trigger trigger_제품변경로그
after update on 제품
for each row
begin
	if (new.단가 <> old.단가) then
		insert into 제품로그(처리, 내용)
		values('UPDATE', CONCAT('제품번호:', Old.제품번호, ' 단가:', old.단가, '->', new.단가 ));
	end if;
    
    if (new.재고 <> old.재고) then
		insert into 제품로그(처리, 내용)
        values('UPDATE', CONCAT('제품번호:', old.제품번호, ' 재고:', old.재고, '->', new.재고 ));
	end if;
end $$
delimiter ;

# 트리거 동작 여부 확인
update 제품
set 단가 = 2500
where 제품번호 = 99;

select * from 제품로그;

# 제품 테이블에서 제품 정보를 삭제하면, 삭제된 레코드의 정보를 제품로그 테이블에 저장하는 트리거 작성
delimiter $$
create trigger trigger_제품삭제로그
after delete on 제품
for each row
begin
	insert into 제품로그(처리, 내용)
    values('DELETE', concat('제품번호:', old.제품번호, ' 제품명:', old.제품명));
end $$
delimiter ;

# 트리거 동작 여부 확인
delete from 제품
where 제품번호 = 99;

select * from 제품로그;

#2024-05-17------------------------------------------------------------------------------------------------------------
use 한빛무역;
use 한빛학사;

/* 점검문제 */

/* 문제1 */
delimiter $$
create procedure proc_주문수량_금액합
	(
		in grade varchar(20)
	)
begin
	select 제품명
		, sum(주문수량) as 주문수량합
        , sum(주문세부.단가 * 주문세부.주문수량) as 주문금액합
        from 제품 join 주문세부
        on 제품.제품번호 = 주문세부.제품번호
        where 제품명 like grade
        group by 제품명;
end $$
delimiter ;

call proc_주문수량_금액합('%캔디');

drop procedure proc_주문수량_금액합;

/* 문제2 */
set global log_bin_trust_function_creators = 1;

delimiter $$
create function func_연령구분(happy date)
	returns varchar(20)
begin
	declare age int;
    declare age_g varchar(20);
	set age = timestampdiff(year, happy, curdate());
    
	case 
		when age < 20 then
			set age_g = '미성년';
		when age between 20 and 30 then
			set age_g = '청년층';
		when age between 30 and 55 then
			set age_g = '중년층';
		when age between 55 and 70 then
			set age_g = '장년층';
		when age > 70 then
			set age_g = '노년층';
		else
			set age_g = Null;
	end case;
    return age_g;
end $$
delimiter ;

select 사원번호, 이름, 생일
	, timestampdiff(year, 생일, curdate()) as 나이
    , func_연령구분(생일) as 연령구분
from 사원;

select func_연령구분('1988-08-27');

drop function func_연령구분;


/* DB, JAVA 연결하기 */

/* DB survletex 생성 */
create database servletex;

use servletex;

create table accounts 
(
 ano varchar(20) primary key,
 owner varchar(20) not null,
 balance numeric not null
);

insert into accounts (ano, owner, balance)
values('111-111-1111', '하여름', 1000000);

insert into accounts (ano, owner, balance)
values('222-222-2222', '한겨울', 0);

create table users
(
 userid varchar(50) primary key,
 username varchar(50) not null,
 userpassword varchar(50) not null,
 userage numeric(3) not null,
 useremail varchar(50) not null
);

create table boards
(
 bno int primary key auto_increment, # auto_increment: 자동으로 번호 생성(일련번호)
 btitle varchar(100) not null,
 bcontent longtext not null,
 bwriter varchar(50) not null,
 bdate datetime default now(),
 bfilename varchar(50) null,
 bfiledata longblob null
);

insert into users (userid, username, userpassword, userage, useremail)
values('spring', '김봄이', '12345', 26, 'spring@mycompany.com');

select * from users;

insert into boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
values(14, '봄의 정원', '정원의 꽃이 이쁘네요.', 'winter', '22/01/25', 'spring.jpg', 'C:/web/mySQL/src/main/java/mySQL/images/snow.jpg');

insert into boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
values(12, '눈 오는 날', '함박눈이 내려요.', 'winter', '22/01/25', 'snow.jpg', 'C:/web/mySQL/src/main/java/mySQL/images/snow.jpg');

insert into boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
values(13, '크리스마스', '메리 크리스마스~', 'winter', '22/01/25', 'christmas.jpg', 'C:/web/mySQL/src/main/java/mySQL/images/snow.jpg');

/* thisisjava DB 생성 */
create database thisisjava;

/* thisisjava 내 accounts 테이블 생성 */
create table accounts 
(
 ano varchar(20) primary key,
 owner varchar(20) not null,
 balance numeric not null
);

create table t_member 
(
 id varchar(20) primary key,
 pwd varchar(20) not null,
 name varchar(20) not null,
 email varchar(20) not null,
 joinDate date
);

/* accounts 테이블 검색 */
select * from accounts;

#2024-05-20-----------------------------------------------------------------------------------------------------------
create database movieproject;

use movieProject;

create table t_movie
(
 mno int primary key auto_increment,
 mtitle varchar(50) not null,
 mgenre varchar(20) not null
);

create table t_reserve
(
 rno int primary key auto_increment,
 rid varchar(50) not null,
 rtitle varchar(50) not null,
 rgenre varchar(20) not null,
 reservationDate timestamp default current_timestamp
);

create table t_member
(
 id varchar(20) primary key,
 pwd varchar(20) not null,
 name varchar(20) not null,
 email varchar(40) not null,
 joinDate date
);

insert into t_movie(mtitle, mgenre)
values("듄", "판타지"), ("파묘", "미스터리"), ("쿵푸팬더", "애니"), ("범죄도시", "액션");

select mno as 영화번호, mtitle as 영화제목, mgenre as 장르 from t_movie;

select rno as 예매번호, rid as ID, rtitle as 영화제목, rgenre as 장르, reservationDate as 발급일시 from t_reserve;

select id as 아이디, pwd as 비밀번호, name as 이름, email as 이메일_주소, joinDate as 가입일자 from t_member;

#2024-06-04---------------------------------------------------------------------------------------------------------
create database jspdb;

create table member
(
	id varchar(10) primary key not null,
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(10),
	birth varchar(10),
    mail varchar(30),
    phone varchar(20),
    address varchar(90),
    regist_day varchar(50)
) default charset=utf8;

select * from member;

delete from member where id="1q2w3e";

drop table member;

insert into member (id, passwd, name)
values(1, 1234, '오동수')
	, (2, 123, '김자바');

create table if not exists product(
	prodId varchar(20) primary key not null,
	name varchar(20),
	price int,
	description text,
	category varchar(20),
	instock int,
	filename varchar(255)
) default charset=utf8;

select * from product;

drop table product;

insert into product(prodId, name, price, description, category, instock, filename)
values("PROD1111", "백팩1", 100000, "등으로 지는 양 어깨에 메는 가방", "가방", 1000, "backpack.jpg"),
	("PROD2222", "숄더백1", 80000, "긴 끈이 달려서 한쪽 어깨에 메는 작은 가방", "가방", 1500, "shoulderbag.jpg"),
    ("PROD3333", "핸드백1", 50000, "손에 들고 다니는 정도의 사이즈의 가방", "가방", 2000, "handbag.jpg"),
    ("PROD4444", "백팩2", 100000, "등으로 지는 양 어깨에 메는 가방", "가방", 1000, "backpack.jpg"),
	("PROD5555", "숄더백2", 80000, "긴 끈이 달려서 한쪽 어깨에 메는 작은 가방", "가방", 1500, "shoulderbag.jpg"),
    ("PROD6666", "핸드백2", 50000, "손에 들고 다니는 정도의 사이즈의 가방", "가방", 2000, "handbag.jpg"),
    ("PROD7777", "백팩3", 100000, "등으로 지는 양 어깨에 메는 가방", "가방", 1000, "backpack.jpg"),
	("PROD8888", "숄더백3", 80000, "긴 끈이 달려서 한쪽 어깨에 메는 작은 가방", "가방", 1500, "shoulderbag.jpg"),
    ("PROD9999", "핸드백3", 50000, "손에 들고 다니는 정도의 사이즈의 가방", "가방", 2000, "handbag.jpg");
    
select * from member;

#2024-06-12------------------------------------------------------------------------------------------------------------
CREATE TABLE board (
	num int not null auto_increment primary key,	# 게시글 순번
    id varchar(20) not null,						# 회원 아이디
    name varchar(20) not null,						# 회원 이름
    subject varchar(100) not null,					# 게시글 제목
    content text not null,							# 게시글 내용
    regist_day varchar(30),							# 게시글 등록일자
    hit int,										# 게시글 조회수
    ip varchar(20)									# 게시글 등록 시 IP    
) default CHARSET=utf8;

select * from board;

#2024-06-14------------------------------------------------------------------------------------------------------------
CREATE TABLE news (
	aid int not null primary key auto_increment,
    title varchar(255) not null,
    img varchar(255) not null,
    date timestamp,
    content varchar(255) not null
);

select * from news;

#2024-06-20------------------------------------------------------------------------------------------------------------
create table t_member (
	id varchar(25) not null primary key,
    pwd  varchar(25) not null,
    name varchar(25) not null,
    email varchar(50),
    joinDate timestamp default current_timestamp
);

select * from t_member;

drop table t_member;


select * from attendance;
select * from attendance;

#2024-06-24------------------------------------------------------------------------------------------------------------
SELECT * FROM  teacher;

delete from teacher;

alter table student drop foreign key fk_student_teacher1;

insert into teacher
values('tc001', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub001', 'admin', '재직')
, ('tc002', '박자바', '1983-03-18', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub002', 'admin', '재직')
, ('tc003', '김휴직', '1988-01-11', '여자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub003', 'admin', '휴직')
, ('tc004', '이자바', '1979-06-13', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub005', 'admin', '재직')
, ('tc005', '최자바', '1990-02-01', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub004', 'admin', '재직')
, ('tc006', '이휴직', '1976-08-10', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub006', 'admin', '휴직')
, ('tc007', '곽자바', '1991-01-10', '여자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub007', 'admin', '재직')
, ('tc008', '배자바', '1984-03-12', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub008', 'admin', '재직')
, ('tc009', '오자바', '1981-07-21', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub009', 'admin', '재직')
, ('tc010', '오자바', '1981-07-21', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '2000-06-08', 'sub010', 'admin', '재직');

SELECT * FROM  student;

delete from student;

insert into student
values('1', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '1', '재학')
, ('2', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '2', '재학')
, ('3', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '3', '재학')
, ('4', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '4', '재학')
, ('5', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '5', '재학')
, ('6', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '6', '재학')
, ('7', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '7', '재학')
, ('8', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '8', '재학')
, ('9', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '9', '재학')
, ('10', '김자바', '1980-02-15', '남자', '대전광역시 서구 둔산동', '010-0000-0000', '000-1111-2222', '80', '10', '재학');

select * from grade;
select * from student;
select * from teacher;
select * from subject;

select * from grade;

select * 
from student 
join grade
on student.st_no = grade.st_no
where student.st_no = 'st011';

SELECT * 
FROM student 
WHERE st_no = 'st003';

SELECT * 
FROM grade 
WHERE st_no = 'st003';


create table grade (
	grade_no int not null primary key auto_increment,
	st_no varchar(50),
    sub_no varchar(50) ,
    semester varchar(50) ,
    score varchar(50) 
);

drop table grade;

delete from grade;

insert into grade(st_no, sub_no, semester, score)
values('st001', 'sub001', '1학년 1학기', '13')
, ('st002', 'sub002', '1학년 1학기', '14')
, ('st003', 'sub003', '2학년 1학기', '34')
, ('st004', 'sub004', '2학년 2학기', '64')
, ('st005', 'sub005', '3학년 1학기', '33')
, ('st006', 'sub006', '3학년 2학기', '55')
, ('st007', 'sub007', '2학년 1학기', '44')
, ('st008', 'sub008', '2학년 2학기', '66')
, ('st009', 'sub009', '3학년 1학기', '53')
, ('st010', 'sub010', '1학년 2학기', '70');

insert into subject
values('sub001', '국어')
, ('sub002', '영어')
, ('sub003', '수학')
, ('sub004', '사회')
, ('sub005', '과학')
, ('sub006', '미술')
, ('sub007', '기술')
, ('sub008', '가정')
, ('sub009', '체육')
, ('sub010', '음악');

select grade.grade_no, grade.st_no, grade.sub_no, grade.semester, grade.score, teacher.tc_no, teacher.tc_name
from grade
join subject ON grade.sub_no = subject.sub_no
join teacher ON subject.sub_no = teacher.sub_no
where teacher.tc_no = 'tc001';

select teacher.tc_no, teacher.sub_no, grade.st_no, grade.semester, grade.score
from teacher
join subject
on teacher.sub_no = subject.sub_no
join grade
on subject.sub_no = grade.sub_no
where teacher.tc_no = 'tc001';