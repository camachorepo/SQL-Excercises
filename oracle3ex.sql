create table course_info(
course_code varchar(10) primary key, 
course_name varchar(20) not null, 
course_description varchar(25), 
course_start_date date, 
course_duration int, 
no_of_participants int, 
course_type char(3)

);

create table student_info(
student_id varchar (10) primary key, 
first_name varchar(10), 
last_name varchar(25),
address varchar(150)

);

create table student_courses(
student_id  varchar (10) ,
course_code varchar (10),
CONSTRAINT fk_studentid foreign key (student_id) references student_info(student_id),
CONSTRAINT fk_coursecode foreign key (course_code) references course_info(course_code)

);

create table course_fees(

course_code varchar(10),
special_fees number (10,0), 
base_fees number (10,0) ,
discount number  (5,0) check ((discount < 15) or (discount  > 5)), 
constraint bf_ch check (base_fees > special_fees)
);



