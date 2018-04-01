create table students(
first_name  varchar(20), 
last_name varchar(20), 
email   varchar(50), 
address varchar(50),
state varchar(20),
pin   int, 
phone_no  varchar (10), 
s_id varchar(10), 
date_of_birth date,
qualification varchar (2),
percent_10 int, 
percent_20 int, 
date_of_passing_12 date, 
subjects varchar (50), 
CONSTRAINT student_pk PRIMARY KEY (s_id) 
);



create table courses(
c_name varchar(20), 
c_code varchar(3) , 
c_subjects varchar(20), 
c_duation int, 
c_fee int, 
c_description varchar(50), 
CONSTRAINT course_pk PRIMARY KEY (c_code) 

);

create table student_courses(
s_id  varchar(10) , 
c_code varchar (3), 
reg_no varchar (5) primary key, 
course_status varchar(5), 

constraint student_fk foreign key (s_id) references students(s_id),
constraint course_fk foreign key (c_code) references courses(c_code)
);


create table student_score(

reg_no varchar (6), 
score int, 
exam_date date, 
CONSTRAINT fk_reg foreign key (reg_no) references student_courses(reg_no)

);

create table certification (
reg_no varchar(6), 
c_code varchar (3),
certificate_request_id varchar(3) primary key,
certificate_status varchar (10), 
issue_date date,

CONSTRAINT fk_cert_reg foreign key (reg_no) references student_courses(reg_no), 
CONSTRAINT fk_cert_ccode foreign key (c_code) references  courses(c_code)

);



create table instructor(
first_name varchar(20), 
last_name varchar (20), 
address varchar(50), 
state varchar(20), 
pin int, 
instructor_id varchar(10) primary key, 
date_of_birth date, 
qualification varchar (2), 
subjects varchar (20), 
c_code varchar(3)

); 

create table emp(
employee_id int,
first_name varchar(20), 
last_name varchar(20), 
phone_number varchar(4), 
hire_date date, 
salary  int, 
commission_pct  float,
manager_id  int, 
job_id  varchar (20), 
department_id int

);



insert into students
values('Ranjit', 'Chatterjee', 'r_chatt@aaa.com', '2/10 ashok vihar', 'west bengal', 
700101, '9876578901', 'S1001', to_date('22/04/1980', 'DD/MM/YYYY'), 'BE', 70, 69, to_date('30/03/2002', 'DD/MM/YYYY'), 'Mechanical Engg' );

insert into students
values('Kaushik',
'Bhatterjee',
'kaushik@bb.com',
'block A gagan vihar',
'west bengal',
700096,
'9812345643',
'S1002',
to_date('10/8/1980', 'DD/MM/YYYY'),
'BE',
65,
72,
to_date('30/4/2002', 'DD-MM-YYYY'),
'Civil Engg'
 );
 
 
 insert into students
values('Kunal',
'Ghosh',
'Kunal@gmail.com',
'1A Shivam Apt',
'west bengal',
700096,
'9678430987',
'S1003',
to_date('12/12/1979', 'DD-MM-YYYY'),
'BE',
77,
74,
to_date('12/12/1979', 'DD-MM-YYYY'),
'Mechanical Engg.'
 );
 
 
  insert into students
values('Pradeep',
'R',
'Pradeep@gmail.com',
'2B Trinity towers',
'west bengal',
700107,
'9234540987',
'S1004',
to_date('22/12/1981', 'DD-MM-YYYY'),
'BE',
78,
70,
to_date('22/12/1981', 'DD-MM-YYYY'),
'Electrical Engg'

 );
 
 
   insert into students
values('Rakhi',
'Mukherjee',
'Rakhi@gmail.com',
'8/12c ashoka',
'west bengal',
700109,
'9980768543',
'S1005',
to_date('3/5/1981','DD/MM/YYYY'),
'BE',
80,
82,
to_date('03/5/1981', 'DD/MM/YYYY'),
'Electrical Engg.'

 );
 
 
insert into students
values('Sekhar',
'Rao',
's_rao@gmail.com',
'22/10 A Vishal Apt',
'west bengal',
700109,
 ' ',
'S1006',
to_date('3/5/1981', 'DD/MM/YYYY'),
'BE',
75,
80,
to_date('13/06/03', 'DD-MM-YYYY'),
'Electrical Engg.'

 );

insert into courses
values('C &' || ' Data Structure',
'100',
'c, ds',
40,
4000,
'Deatiled c and datastructure concepts'


);

insert into courses
values('HTML & ' || 'JS',
'101',
'html, js',
20,
3500,
'Detailed HTML and JAVA SCRIPT'

);


insert into courses
values('Java',
'102',
'java',
90,
6000,
'Core Java'

);

insert into courses
values('Database',
'103',
'rdbms, oracle',
40,
6000,
'Database Concepts'

);



insert into courses
values('Cobol',
'104',
'PL,Cobol',
40,
6000,
'Programming Logic and Cobol'

);

insert into student_courses
values('S1001',
'100',
'R1001',
'COMPL'
);

insert into student_courses
values('S1001',
'101',
'R1002',
'VALID'
);


insert into student_courses
values('S1002',
'102',
'R1003',
'VALID'
);

insert into student_courses
values('S1003',
'103',
'R1004',
'BREAK'
);


insert into student_courses
values('S1004',
'103',
'R1005',
'COMPL'
);


insert into student_courses
values('S1005',
'103',
'R1006',
'COMPL'
);

insert into student_score
values(
'R1001',
70,
to_date('12/06/2004', 'DD-MM-YYYY')

);


insert into student_score
values('R1005',
80,
to_date('15/09/2003', 'DD-MM-YYYY')

);


insert into student_score
values('R1006',
78,
to_date('12/12/2003', 'DD-MM-YYYY')

);


insert into certification
values ('R1001',
'100',
'101',
'APPLIED',
''

);

insert into certification
values ('R1005'
'103'
'102'
'ISSUED'
to_date('18/10/2003', 'DD-MM-YYYY')
);

insert into certification
values ('R1006',
'103',
'103',
'ISSUED',
to_date('10/06/2004', 'DD-MM-YYYY')
);

insert into instructor 
values (
'Kaushik',
'Bhatterjee',
'block A gagan vihar',
'west bengal',
700101,
'I1001',
to_date('22/04/1973', 'DD/MM/YYYY'),
'BE',
'Comp Engg',
'100'

);

insert into instructor 
values (
'Kanchan',
'Sen',
'2/10 vani vilas',
'west bengal',
700096,
'I1002',

to_date('10/08/1970', 'DD/MM/YYYY'),
'BE',
'Comp Engg',
'101'
);



insert into instructor 
values ('Sourabh',
'Ghosh',
'1A Sheetal Apt',
'west bengal',
700096,
'I1003',
to_date('12/12/1969', 'DD-MM-YYYY'),
'BE',
'Comp Engg',
'102'
);




insert into instructor 
values ('Sumit',
'Guha',
'2B T towers',
'west bengal',
700107,
'I1004',
to_date('22/09/1970', 'DD/MM/YYYY'),
'BE',
'Comp Engg',
'103'
);


insert into instructor 
values ('Radha',
'Mukherjee',
'8/12c ashoka',
'west bengal',
700109,
'I1005',
to_date('3/05/1971','DD/MM/YYYY'),
'BE',
'Comp Engg',
'104'
);

insert into instructor 
values ('Sekhar',
'Rao',
'22/10 A Vishal Apt',
'west bengal',
700109,
'I1006',
to_date('3/05/1975','DD/MM/YYYY'),
'BE',
'Comp Engg',
'103'
);

insert into emp
values(10,
'Smith',
'Trenna',
'7890',
to_date ('29/06/1997','DD/MM/YYYY'),
20000,
0.5,
20,
'SA_REP',
10
);


insert into emp
values(20,
'Sam',
'Peter',
'3456',
to_date('15/03/1998', 'DD/MM/YYYY'),
30000,
0.0,
0,
'MKT_REP',
10
);

insert into emp
values(30,
'Sekhar',
'Rao',
'7632',
to_date ('9/07/1998', 'DD/MM/YYYY'),
'13000',
0.5,
20,
'ST_CLERK',
20
);


insert into emp
values(40,
'Sourabh',
'Ghosh',
'7812',
to_date('12/02/1998', 'DD/MM/YYYY'),
10000,
0.0,
10,
'MKT_REP',
10
);

insert into emp
values(50,
'Kanchan',
'Sen',
'9000',
to_date('1/10/1996', 'DD/MM/YYYY'),
12000,
0.3,
10,
'ST_CLERK',
10
);

insert into emp
values(60,
'Kushik',
'Bhatterjee',
'2345',
to_date('5-Jan-97', 'DD/MM/YYYY'),
9000,
0.6,
30,
'SA_MAN',
20
);

insert into emp
values(70,
'Radha',
'Mukherjee',
'2134',
to_date('10-Mar-97', 'DD/MM/YYYY'),
15000,
0.6,
30,
'SA_MAN',
20
);

select s.s_id, s.first_name, s.last_name, sc.c_code
from students s join student_courses sc on s.s_id = sc.s_id
where sc.c_code ='102';

select s.first_name, s.last_name, s.email, sc.c_code, c.c_name, scd.score, scd.exam_date
from students s join student_courses sc on s.s_id = sc.s_id join courses c on sc.c_code = c.c_code join student_score scd on sc.reg_no = scd.reg_no
where sc.reg_no ='R1001';


select s.first_name, sc.c_code
from students s full outer join student_courses sc on s.s_id = sc.s_id;


select s.first_name, sc.c_code
from students s left join student_courses sc on s.s_id = sc.s_id;

select s.first_name, sc.c_code
from student_courses sc right join students s on sc.s_id = s.s_id;
