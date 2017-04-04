use codeup_test_db;

drop table if exists albumsOverFourtyMillion;

create table IF NOT EXISTS albumsOverFourtyMillion(

	id INT unsigned not null auto_increment,
	Artist varchar(150) NOT NULL, 
	Album varchar(150) NOT NULL, 
	Released smallINT,
	Genre varchar(150) NOT NULL,
	Sales_Certification decimal(20, 2) default null,
	primary key (id)
);

-- migrations are files thatcontrol the structure of a table 