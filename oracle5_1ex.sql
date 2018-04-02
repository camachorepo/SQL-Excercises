declare 
begin

dbms_output.enable(NULL);
dbms_output.put_line('Hello World!'); 

end;

declare 
j int :=2;
i int :=1;
begin 
<<outer_loop>>
    for j in 2..100 loop
        while i < (j/2)
        loop    
            if mod(j, i) =0 then  
            exit;
            end if;
             if i = ((j/2)-1) then 
                if mod(j, i) !=0 then
                dbms_output.put_line(j);
                end if;
             end if;   
           i := i+1;
        end loop; 
    end loop outer_loop;
end;



create or replace function 
nfactorial (factorial int) 
return int
is value int:= 1;
begin
    for i  in  reverse 2..factorial 
    loop
        value := i  * value;
        end loop; 
    return value;
end;

select nfactorial(33) from dual;


create or replace procedure
new_employee (e_id	NUMBER(38,0),
f_name	VARCHAR2(20 BYTE),
l_name	VARCHAR2(20 BYTE),
p_num	VARCHAR2(4 BYTE),
h_date	DATE,
s	NUMBER(38,0),
c_pct	FLOAT,
m_id	NUMBER(38,0),
j_id	VARCHAR2(20 BYTE),
d_id	NUMBER(38,0)) as 
begin 
    insert into emp 
    values (e_id,
    f_name,
    l_name,
    p_num,
    h_date,
    s,
    c_pct,
    m_id,
    j_id,
    d_id);
end;


create or replace procedure
update_employee (e_id	NUMBER(38,0),
f_name	VARCHAR2(20 BYTE),
l_name	VARCHAR2(20 BYTE),
p_num	VARCHAR2(4 BYTE),
h_date	DATE,
s	NUMBER(38,0),
c_pct	FLOAT,
m_id	NUMBER(38,0),
j_id	VARCHAR2(20 BYTE),
d_id	NUMBER(38,0)) as 
begin
    update emp 
    set first_name = f_name, 
        last_name = l_name, 
        phone_number = p_num, 
        hire_date = h_date, 
        salary  = s,
        commission_pct = c_pct, 
        manager_id = m_id, 
        job_id = j_id, 
        department_id = d_id
    where employee_id = e_id;
end;






create or replace package emp_update as 

procedure update_employee (e_id	NUMBER(38,0),
f_name	VARCHAR2(20 BYTE),
l_name	VARCHAR2(20 BYTE),
p_num	VARCHAR2(4 BYTE),
h_date	DATE,
s	NUMBER(38,0),
c_pct	FLOAT,
m_id	NUMBER(38,0),
j_id	VARCHAR2(20 BYTE),
d_id	NUMBER(38,0));

procedure new_employee (e_id	NUMBER(38,0),
f_name	VARCHAR2(20 BYTE),
l_name	VARCHAR2(20 BYTE),
p_num	VARCHAR2(4 BYTE),
h_date	DATE,
s	NUMBER(38,0),
c_pct	FLOAT,
m_id	NUMBER(38,0),
j_id	VARCHAR2(20 BYTE),
d_id	NUMBER(38,0));

end emp_update;




