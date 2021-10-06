create database p_project;

use p_project;

select user(), database();

create table member(
	num int primary key auto_increment,
	id varchar(40) not null unique,
	pw varchar(40) not null ,
	name varchar(20) not null unique,
	email varchar(40) not null,
	gender varchar(1)
);

create table forum_1(
	num int primary key auto_increment,
	title varchar(40) not null,
	content varchar(1024) not null,
	name varchar(40) not null,
	reg_date timestamp default current_timestamp,
	member_num int, 
	CONSTRAINT fk_p_project_member_num 
		foreign key(member_num)  references member(num) 
		on delete NO action
		on update NO ACTION
);

create table forum_1_reply(
	num int primary key auto_increment,
	content varchar(1024) not null,
	name varchar(40) not null,
	reg_date timestamp default current_timestamp,
	member_num int,
	forum_1_num int,
	CONSTRAINT fk_p_project_forum_1_reply_member_num 
		foreign key(member_num)  references member(num) 
		on delete NO action
		on update NO action,
	CONSTRAINT fk_p_project_forum_1_reply_forum_1_num 
		foreign key(forum_1_num)  references forum_1(num) 
		on delete NO action
		on update NO action
);

