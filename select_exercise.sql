USE codeup_test_db;

select * from albumsOverFourtyMillion where Artist = "Pink Floyd";


select Released from albumsOverFourtyMillion where Album = "Sgt. Peppers Lonely Hearts Club Band";



select genre from albumsOverFourtyMillion where Album = "Nevermind";

select Album from albumsOverFourtyMillion where released between 1990 and 1999;


select Album from albumsOverFourtyMillion where Sales_Certification between 0 and 20000000;


select Album from albumsOverFourtyMillion where Genre like "%rock%" OR Genre like "Rock%";


