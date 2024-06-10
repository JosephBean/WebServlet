USE edu;

CREATE TABLE `user` (
	`no` INT(11) NOT NULL AUTO_INCREMENT PRIMARY key,
	`name` VARCHAR(100) ,
	`email` VARCHAR(200),
	`pwd` VARCHAR(100) ,
	`gender` VARCHAR(1) ,
	`del` TINYINT(1) DEFAULT '1',
	`regDate` DATETIME NOT NULL DEFAULT NOW() 
);
