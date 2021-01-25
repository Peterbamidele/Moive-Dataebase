--  create DATABASE Movie_Database;
 
  use Movie_Database;
 
--    Create table Actor(
--   actor_id int NOT NULL,
--   actor_Fname VARCHAR(45)  NULL,
--   actor_Lname VARCHAR(45)  NULL,
--   actor_Gender VARCHAR(45)  NULL,
--   CONSTRAINT Actor_pk PRIMARY KEY(actor_id)
--   );

-- create table Movie(
-- movie_id int not null,
-- movie_title char(45) not null,
-- movie_year int not null,
-- movie_time int ,
-- movie_lang char(50),
-- movie_dt_rel date,
-- movie_rel_country char(30),
-- CONSTRAINT Movie_pk PRIMARY KEY(movie_id)
-- );

-- create table Movie_Cast(
-- actor_id int not null,
-- movie_id int not null,
-- role char(30) not null ,
-- CONSTRAINT Actor_fk foreign KEY(actor_id) references Actor(actor_id),
-- CONSTRAINT Moive_fk foreign KEY(movie_id) references Movie(movie_id)
-- );

-- create table Director(
-- director_id int,
-- director_Fname varchar(45),
-- director_Lname varchar(45),
-- CONSTRAINT Director_pk PRIMARY KEY(director_id)
-- );

-- create table Movie_Direction(
-- director_id int,
-- movie_id int not null,
-- CONSTRAINT Director_fk foreign KEY(director_id) references Director(director_id),
-- CONSTRAINT Movie_Cast_fk foreign KEY(movie_id) references Movie(movie_id)
-- );

-- create table Genres(
-- genres_id int,
-- genres_title char(30),
-- CONSTRAINT Genres_pk PRIMARY KEY(genres_id)
-- );

--  create table Movie_Genres(
--    movie_id int null,
--   genres_id int,
--   CONSTRAINT Geners_fk foreign KEY(genres_id) references Genres(genres_id),
--   CONSTRAINT Movie_fk foreign KEY(movie_id) references Movie(movie_id)
--    );

create table Rating(
movie_id int null,
reviewer_id int,
reviewer_stars int ,
num_of_ratings int ,
CONSTRAINT Movies_fk foreign KEY(movie_id) references Movie (movie_id),
CONSTRAINT Reviewer_fk foreign KEY(reviewer_id) references Reviewer (reviewer_id)
);

-- create table Reviewer(
-- reviewer_id int,
-- reviewer_name varchar(45),
-- CONSTRAINT Reviwer_pk PRIMARY KEY(reviewer_id)
-- );


