
create table students (
	full_name VARCHAR(50),
	age INT,
	birth_of_date DATE,
	gender VARCHAR(50),
	average_grade NUMERIC(2, 2),
	info_about_yourself VARCHAR(50),
	need_for_dormitory VARCHAR(10),
	additional_info VARCHAR(100)
);
insert into students (full_name, age, birth_of_date, gender, average_grade, info_about_yourself, need_for_dormitory, additional_info) values ('Spense McCleod', 17, '12/2/2003', 'Female', 2.82, 'Transitional Justice', true, 'singer');
insert into students (full_name, age, birth_of_date, gender, average_grade, info_about_yourself, need_for_dormitory, additional_info) values ('Xymenes Wilshaw', 20, '9/4/2001', 'Male', 3.13, 'IBC', true, 'dancer');
insert into students (full_name, age, birth_of_date, gender, average_grade, info_about_yourself, need_for_dormitory, additional_info) values ('Brendan McKissack', 21, '6/14/2000', 'Female', 4.00, 'NX-OS', false, 'love politics');
insert into students (full_name, age, birth_of_date, gender, average_grade, info_about_yourself, need_for_dormitory, additional_info) values ('Abeu Menichi', 17, '3/20/2004', 'Male', 3.83, 'Disability Insurance', true);
insert into students (full_name, age, birth_of_date, gender, average_grade, info_about_yourself, need_for_dormitory, additional_info) values ('Ninette Aiton', 18, '6/7/2003', 'Female', 3.05, 'Job Descriptions', false, 'singer');


create table instructors (
	full_name VARCHAR(50),
	speaking_languages VARCHAR(50),
	work_experience INT,
	possibility_to_remote_lessons VARCHAR(50)
);
insert into instructors (full_name, speaking_languages, work_experience, possibility_to_remote_lessons) values ('Nate Gibbon', 'Catalan', 5, true);
insert into instructors (full_name, speaking_languages, work_experience, possibility_to_remote_lessons) values ('Vivien Petrasch', 'Swedish', 2, true);
insert into instructors (full_name, speaking_languages, work_experience, possibility_to_remote_lessons) values ('Barrie Verryan', 'Danish', 1, false);
insert into instructors (full_name, speaking_languages, work_experience, possibility_to_remote_lessons) values ('Emelen Goomes', 'Albanian', 4, false);
insert into instructors (full_name, speaking_languages, work_experience, possibility_to_remote_lessons) values ('Hillel Acreman', 'Northern Sotho', 10, true);



create table lesson_participants (
	lesson_title VARCHAR(50),
	teaching_instructor VARCHAR(50),
	studying_students VARCHAR(50),
	room_number int
);
insert into lesson_participants (lesson_title, teaching_instructor, studying_students, room_number) values ('Math', 'Marji Fyrth', 'Faythe Sturrock', 27);
insert into lesson_participants (lesson_title, teaching_instructor, studying_students, room_number) values ('Databases', 'Hedi Caswell', 'Augustine Kopecka', 86);
insert into lesson_participants (lesson_title, teaching_instructor, studying_students, room_number) values ('Algorithms', 'Noel Szymaniak', 'Rosanna McGuiness', 100);
insert into lesson_participants (lesson_title, teaching_instructor, studying_students, room_number) values ('English', 'Arlen Quarrie', 'Saudra Turk', 454);
insert into lesson_participants (lesson_title, teaching_instructor, studying_students, room_number) values ('Literature', 'Emilia Yancey', 'Gerta Gulliman', 125);
