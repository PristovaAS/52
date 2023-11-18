
create table students
(
    id SERIAL primary key ,
    name text not null ,
    total_score integer not null default 100
);

insert into students(id, name, total_score) values (10, 'Иван Иванов', 86);
insert into students(id, name, total_score) values (20, 'Анисья Лагошина', 92);
insert into students(id, name, total_score) values (30, 'Владимир Коржев', 79);
insert into students(id, name, total_score) values (40, 'Оливия Карпюка', 82);
insert into students(id, name, total_score) values (50, 'Ильяс Мухаметшин', 65);
insert into students(id, name, total_score) values (60, 'Сергей Петров', 88);
insert into students(id, name, total_score) values (70, 'Ефросиния Окладникова', 96);
insert into students(id, name, total_score) values (80, 'Ангелина Скворцова', 56);
insert into students(id, name, total_score) values (90, 'Станислава Антонова', 84);
insert into students(id, name, total_score) values (100, 'Дмитрий Столяров', 62);

create table activity_scores
(
    student_id integer,
    activity_type text not null ,
    score integer not null ,
    constraint fk_students_id foreign key (student_id) references students(id)
);

insert into activity_scores(student_id, activity_type, score) values (10, 'Homework', 17);
insert into activity_scores(student_id, activity_type, score) values (10, 'Classwork', 16);
insert into activity_scores(student_id, activity_type, score) values (10, 'test', 18);
insert into activity_scores(student_id, activity_type, score) values (10, 'Exam', 35);

insert into activity_scores(student_id, activity_type, score) values (20, 'Homework work', 15);
insert into activity_scores(student_id, activity_type, score) values (20, 'Classwork work', 17);
insert into activity_scores(student_id, activity_type, score) values (20, 'test', 20);
insert into activity_scores(student_id, activity_type, score) values (20, 'Exam', 40);

insert into activity_scores(student_id, activity_type, score) values (30, 'Homework', 17);
insert into activity_scores(student_id, activity_type, score) values (30, 'Classwork', 20);
insert into activity_scores(student_id, activity_type, score) values (30, 'test', 15);
insert into activity_scores(student_id, activity_type, score) values (30, 'Exam', 27);

insert into activity_scores(student_id, activity_type, score) values (40, 'Homework', 12);
insert into activity_scores(student_id, activity_type, score) values (40, 'Classwork', 12);
insert into activity_scores(student_id, activity_type, score) values (40, 'test', 20);
insert into activity_scores(student_id, activity_type, score) values (40, 'Exam', 38);

insert into activity_scores(student_id, activity_type, score) values (50, 'Homework', 10);
insert into activity_scores(student_id, activity_type, score) values (50, 'Classwork', 12);
insert into activity_scores(student_id, activity_type, score) values (50, 'test', 18);
insert into activity_scores(student_id, activity_type, score) values (50, 'Exam', 23);

insert into activity_scores(student_id, activity_type, score) values (60, 'Homework work', 20);
insert into activity_scores(student_id, activity_type, score) values (60, 'Classwork work', 20);
insert into activity_scores(student_id, activity_type, score) values (60, 'test', 18);
insert into activity_scores(student_id, activity_type, score) values (60, 'Exam', 30);

insert into activity_scores(student_id, activity_type, score) values (70, 'Homework', 19);
insert into activity_scores(student_id, activity_type, score) values (70, 'Classwork', 18);
insert into activity_scores(student_id, activity_type, score) values (70, 'test', 19);
insert into activity_scores(student_id, activity_type, score) values (70, 'Exam', 40);

insert into activity_scores(student_id, activity_type, score) values (80, 'Homework', 10);
insert into activity_scores(student_id, activity_type, score) values (80, 'Classwork', 13);
insert into activity_scores(student_id, activity_type, score) values (80, 'test', 13);
insert into activity_scores(student_id, activity_type, score) values (80, 'Exam', 20);

insert into activity_scores(student_id, activity_type, score) values (90, 'Homework', 18);
insert into activity_scores(student_id, activity_type, score) values (90, 'Classwork', 19);
insert into activity_scores(student_id, activity_type, score) values (90, 'test', 15);
insert into activity_scores(student_id, activity_type, score) values (90, 'Exam', 32);

insert into activity_scores(student_id, activity_type, score) values (100, 'Homework', 20);
insert into activity_scores(student_id, activity_type, score) values (100, 'Classwork', 12);
insert into activity_scores(student_id, activity_type, score) values (100, 'test', 7);
insert into activity_scores(student_id, activity_type, score) values (100, 'Exam', 23);


select * from activity_scores

select * from students

#задача 1
update activity_scores
set score = 13
where student_id=40 and activity_type='Homework'

select * from students
order by id


DROP FUNCTION public.my_func()

#задача 2

do $$
declare ship integer; ts integer; id_ integer;
begin
for ts, id_ in (select total_score, id from students)
loop
	if ts >= 90 then ship = 1000;
	elsif ts >= 80 and ts < 90 then ship = 500;
	else ship =0;
	end if;
	update students
	set scholarship = ship
	where id=id_;
end loop;
end;
$$

update activity_scores
set score = 18
where student_id=40 and activity_type='Homework'

DROP FUNCTION calculate_scholarship()