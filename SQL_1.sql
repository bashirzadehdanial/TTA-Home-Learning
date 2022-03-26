show databases;

create database movies;

USE movies;

Create table movies_details (
  movie_id int(11) not null,
  movieName varchar(20) not null,
  Genre varchar(20) not null,
  movieYear int(11) not null,
  primary key (movie_id)
  );
  explain movies;




