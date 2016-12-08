DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`(
 `account_id` int(10) NOT NULL auto_increment,
 `account_name` varchar(255) DEFAULT NULL COMMENT '用户名',
 `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
 `account_pwd` varchar(255)  DEFAULT NULL COMMENT '密码',
 `full_name` varchar(255) DEFAULT null comment '全名',
 `mobile` varchar(255) DEFAULT NULL comment '手机',
 `telephone` varchar(255) DEFAULT NULL comment '电话',
 `email` varchar(255) DEFAULT NULL comment'电子邮箱',
 `account_province` int(10) DEFAULT NULL comment'所在省',
 `mail_address` varchar(255) DEFAULT null comment'邮寄地址',
 `role_id` int(10) DEFAULT NULL COMMENT '角色id',
 `ActiveFlag` bit DEFAULT null COMMENT '是否激活',
 `is_delete` bit DEFAULT NULL comment'是否删除',
 `create_time` datetime DEFAULT NULL comment'创建日期',
 PRIMARY KEY (`account_id`),
 foreign key(role_id) REFERENCES role(role_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO account(account_id, account_name, nick_name, account_pwd, mobile, role_id) VALUES (1, 'Joseph','mumufans','1111111111','18301643767','1');