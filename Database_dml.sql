use whatsapp_db;

insert into users( user_name, mobile_no) values('Anu',9980765776),('shilpa',8957637843),('swetha',97852405389);

insert into user_status(statuses) values ('Available'),('Busy'),('At Work'),('Sleeping');

insert into messages(posted_by, message,posted_to) values (1,'helloo',2),(2,'haaiii',3);


alter table messages modify id int  auto_increment;
alter table messages modify message varchar(20) not null;

select * from users u,  user_status us where u.status_id = us.id;

update users set status_id=2 where id= 3;

insert into groups(group_name,members_id) values ('hexa',1),('hexa',3),('chennai',2);
insert into groups(group_name,members_id) values ('hexa',3);


select * from users u, groups g, user_status us where u.status_id=us.id and g.members_id=u.id;

alter table messages add column read_status int default 0;
alter table messages add column read_time timestamp ;

update messages set  read_time = current_timestamp , read_status = 1 where id =1;
