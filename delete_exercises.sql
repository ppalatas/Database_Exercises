use codeup_test_db;

delete from albumsOverFourtyMillion where Released > 1991;

delete from albumsOverFourtyMillion where Genre like "%disco%" or "Disco%";

delete from albumsOverFourtyMillion where Artist like "%Whitney Houston%";