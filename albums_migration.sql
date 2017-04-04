use codeup_test_db;

drop table albumsOverFourtyMillion;

create table IF NOT EXISTS albumsOverFourtyMillion(

	id INT unsigned not null auto_increment,
	Artist varchar(150) NOT NULL, 
	Album varchar(150) NOT NULL, 
	Released YEAR,
	Genre varchar(150) NOT NULL,
	Sales_Certification INT default null,
	primary key (id)
);