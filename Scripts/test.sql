
insert into member
	values(1, "admin", "admin", "대장", "admin@admin", "m");
insert into member(id, pw, name, email, gender) values(11,11,11,11,1);
delete from member where num = 2;
update member set pw = 222, name = 222, email = 222 where num = 3;
select * from member; 

select * from member where id like 'a';

select * from forum_1;

insert into forum_1 (title, content, name, member_num)
			values ("제목", "내용", "테스트1", 2);
		
delete from forum_1 where num = 3;
		
select * from forum_1 where name like '%대%';

select * from forum_1 where num >= 1 and num <= 10;

select * from forum_1_reply;

INSERT INTO forum_1_reply (content, name, member_num, forum_1_num) values ("아아아2", "대장", 1, 1);
select * from forum_1_reply ;
select * from forum_1_reply where num like 1;

update forum_1_reply set content = "우우" where num = 2;
delete from forum_1_reply  where num = 2;