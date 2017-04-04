use codeup_test_db;

drop table if exists albumsOverFourtyMillion;

create table IF NOT EXISTS albumsOverFourtyMillion(

	id INT unsigned not null auto_increment,
	Artist varchar(150) NOT NULL, 
	Album varchar(150) NOT NULL, 
	Released smallINT,
	Genre varchar(150) NOT NULL,
	Sales_Certification INT not null default 0,
	primary key (id)
);

-- migrations are files that control the structure of a table 