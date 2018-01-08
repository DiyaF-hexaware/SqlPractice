
create database whatsapp_db;
use whatsapp_db;

drop table users;
drop table user_status;
drop table messages;

create table users(
id int primary key auto_increment,
user_name varchar(20) not null,
mobile_no bigint ,
unique(mobile_no),
joined_date timestamp default current_timestamp,
status_id int default 1,
foreign key (status_id) references user_status(id)
);

create table user_status(
id int primary key not null auto_increment,
statuses varchar(20) not null
);

create table messages(
id int primary key not null,
posted_by int ,
message varchar(20),
posted_to int,
foreign key( posted_by) references users(id),
foreign key(posted_to) references users(id)
);

create table groups(
id int primary key auto_increment,
group_name varchar(20) not null,
members_id int not null,
foreign key (members_id) references users(id)
);

select * from users;
select * from messages;
select * from user_status;
select * from groups;
delete from groups where id =2;