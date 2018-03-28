create table course_info (
course_code int, 
course varchar (20),
course_description varchar (20), 
course_start_date date
);


alter table course_info modify 
(
course_code varchar(20),
course_description varchar (200)
);

alter table course_info 
add 
(
course_duration int, 
number_of_participants int,
course_type varchar (3)
);

alter table course_info rename column course to course_name;

alter table COURSE_INFO rename to cms_course_info;



truncate table cms_course_info; 

delete table cms_course_info cascade;

insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES (343, 'Java Programming', 'Basics of Java ', to_date('12/12/2012', 'mm/dd/yyyy'));
insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(167,'C Programming','Basics of C', to_date('11/11/2012', 'mm/dd/yyyy') );
insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(347, 'RDBMS', 'Basics of RDBMS', to_date('', 'mm/dd/yyyy'));
insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(106, 'Oracle', 'Oracle SQL', to_date('11/03/2011', 'mm/dd/yyyy'));

update cms_course_info
set course_name = 'SQL'
where course_name='Oracle';

delete from cms_course_info
where course_name ='RDBMS';

insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(106,'Oracle','Oracle PL SQL', to_date('11/3/2011', 'mm/dd/yyyy') );
insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(302, 'Oracle', 'Oracle Architecture', to_date('11/4/2011', 'mm/dd/yyyy'));
insert into cms_course_info(course_code, course_name, course_description, course_start_date )
VALUES(106, 'Core Java', 'Java IO', to_date('11/03/2011', 'mm/dd/yyyy'));

select * 
from cms_course_info
where course_name = 'Core Java';

select * 
from cms_course_info 
where course_name = 'Core Java' and course_code = '343';

select distinct course_name
from cms_course_info;

