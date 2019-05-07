CREATE DATABASE my_bbs;

USE my_bbs;

CREATE TABLE bbs_user (
	id SERIAL PRIMARY KEY,
	login_id varchar(255) UNIQUE NOT NULL,
	name varchar(255) NOT NULL,
	birth_date DATE NOT NULL,
	profile_photo varchar(255),
	create_date DATETIME NOT NULL,
	update_date DATETIME NOT NULL,
	password varchar(255) UNIQUE NOT NULL,
	user_tweet varchar(255),
	report_flag int NOT NULL
	);
	
	INSERT INTO bbs_user (
	login_id,name,birth_date,profile_photo,create_date,update_date,password,report_flag)
	 VALUES ('admin','管理者','1992-07-28',null,now(),now(),'admin',0);
	 
	 CREATE TABLE bbs_category (
	 	id SERIAL PRIMARY KEY,
		category_name varchar(16) UNIQUE NOT NULL
		);
		
	CREATE TABLE bbs_thread (
		id SERIAL PRIMARY KEY,
		title varchar(255) NOT NULL,
		maintext TEXT NOT NULL,
		category_id int NOT NULL,
		thread_photo varchar(255),
		user_id int NOT NULL,
		create_date DATETIME NOT NULL,
		update_date DATETIME NOT NULL
		);
		
	ALTER TABLE bbs_thread ADD profile_photo varchar(255);
		
	CREATE TABLE bbs_post(
		id SERIAL PRIMARY KEY,
		massage text NOT NULL,
		post_photo varchar(255),
		user_id int NOT NULL,
		profile_photo varchar(255),
		thread_id int NOT NULL,
		create_date DATETIME NOT NULL,
		update_date DATETIME NOT NULL
		);
		
		
USE my_bbs;
	INSERT INTO bbs_user (
	login_id,name,birth_date,profile_photo,create_date,update_date,password,report_flag)
	 VALUES ('kon','コンちゃん','1951-05-02',null,now(),now(),'kon',0);
	 rollback;
	 
SELECT * FROM bbs_thread ORDER BY RAND() LIMIT 4
