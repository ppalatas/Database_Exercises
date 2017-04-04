use codeup_test_db;

update albumsOverFourtyMillion
set Sales_Certification = (Sales_Certification * 10);





update albumsOverFourtyMillion 
set Released = (Released - 100) 
where Released < 1980;  





update albumsOverFourtyMillion
set Artist = "Peter Jackson" 
where Artist = "Michael Jackson";

select * from albumsOverFourtyMillion;
 















