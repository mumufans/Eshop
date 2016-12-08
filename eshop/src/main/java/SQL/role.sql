DROP TABLE IF EXISTS`role`;

CREATE TABLE `role`(
`role_id` int(10) not null auto_increment,
`role_code` VARCHAR(255) not null,
`role_name` varchar(255) not null,
 PRIMARY key(`role_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into role VALUES (1, 'admin', '管理员');
insert into role VALUES (2, 'customer', '普通用户');
insert into role VALUES (3, 'chapman', '商家');
