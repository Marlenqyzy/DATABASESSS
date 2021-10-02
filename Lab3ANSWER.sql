-- 1)
select distinct(course_id) from course where credits > 3;
select distinct(room_number) from classroom where building = 'Watson' or building = 'Packard';
select distinct(course_id) from course where dept_name = 'Comp. Sci.';
select distinct(course_id) from takes where semester = 'Fall';
select distinct(name) from student where tot_cred > 45 and tot_cred < 90;
select distinct(name) from student where name like '%a' or name like '%e' or name like '%i' or name like '%o' or name like '%u' or name like '%y';
select distinct(course_id) from prereq where prereq_id = 'CS-101';

-- 2)
select dept_name, avg(salary) as avg_salary from instructor group by dept_name;
select max(num_of_building) max_num from(select count(building) num_of_building from department group by building) a;
select distinct(course_id) from course where credits > 3;
select distinct(course_id) from course where credits > 3;
select distinct(name) from instructor, teaches where instructor.ID = teaches.ID and teaches.course_id = 'MU%' and teaches.course_id = 'BIO%';
select distinct(name) from instructor, teaches where instructor.ID = teaches.ID and teaches.year = '2018';

-- 3)
select distinct(name) from student, takes where student.dept_name = 'Comp. Sci.' and takes.ID = student.ID and (takes.grade = '-A' or takes.grade = 'A') order by name asc;
select distinct(s_ID) from advisor, takes where takes.ID = advisor.s_ID and (takes.grade = 'C%' or takes.grade = 'B-' or takes.grade = 'F');
select distinct(dept_name) from student, takes where (takes.grade != 'F' or takes.grade != 'C') and takes.ID = student.ID;
select distinct(instructor.name) from instructor, takes, student where student.dept_name = instructor.dept_name and takes.ID = student.ID and takes.grade != 'A%';
select distinct(course_id) from section, time_slot where section.time_slot_id = time_slot.time_slot_id and time_slot.end_hr < 13;