DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
 `user_id` int(10) NOT NULL auto_increment,
 `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
 `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
 `user_pwd` varchar(255)  DEFAULT NULL COMMENT '密码',
 `role_id` int(10) DEFAULT NULL COMMENT '',
 `mobile` varchar(255) DEFAULT NULL comment '',
 `telephone` varchar(255) DEFAULT NULL comment '',
 `email` varchar(255) DEFAULT NULL comment'',
 `is_delete` bit DEFAULT NULL comment'',
 `create_time` datetime DEFAULT NULL comment'',
 PRIMARY KEY (`user_id`)
)ENGINE=InnooDB DEFAULT CHARSET=utf8;