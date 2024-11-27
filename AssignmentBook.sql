create database library;
use library;

create table book(
  id int primary key Auto_increment,
  title varchar(255),
  author varchar(100),
  year int,
  genre varchar(100)
);

insert into book(id, title, author, year, genre)
values(1,"The Great Gatsby", "F.Scott Fitzgerald","1925","Fiction"),
(2,"Pride and Prejudice", "Jane Austein", "1813", "Romance"),
(3,"To Kill a Mockingbird", "Harper Lee", "1960", "Fiction"),
(4,"1984", "George Orwell", "1949", "Dystopian"),
(5,"Moby Dick", "Herman Melville", "1851", "Adventure");

select * from book;

/* write a query to select all book where the title start with letter "T" using the like Operator */
select * from  book where title like "T%";

/* write a query  to find all book where the author last name end with son using the like operator */
select * from book where author like "%son";

/* write a query to find all book where  the title contain the word 'and' using the like operator */
select * from book where title like "%and%";

/* write a query to retrieve all book where the title end with the word "bird" using the like operator  */
select * from book where title like "%bird";

/* write a query to find all book where the title has exactily 3 character using REGEXP operator */
select * from book where title REGEXP '^[A-Za-z]+[A-Za-z]+[A-Za-z]+$';

/* write a query to select all book where the title contain a number using the REGEXP operator */
select * from book where title REGEXP "[0-9]";

/* write a query to retrieve all book where the author name start with any letter between "A" and "J" using the REGEXP operator */
select * from book where author REGEXP "[A-J]";

/* write a query to find book where the title genre is either fiction or adventure using the REGEXP operator */
select * from book where genre REGEXP 'Fiction';
select * from book where genre REGEXP 'Fiction|Adventure';
/* write a query to find all book where the title contain at least one uppercase letter using the REGEXP operator */
select * from book where title REGEXP "^[A-Z]";

/* write a query to find all book where the year of publication is between 1800 and 1950 using the like operator */
select * from book where year between "1800" and "1950";


/* write a query to retreive all book where the author name contain exactly two word using the REGEXP operator */
 /* select * from book where author REGEXP  */
 
select * from book where author REGEXP '^[A-Za-z]+[A-Za-z]+$';
 
 /* write a query to find all book where title start with the letter "P" and contain exactly two  word using REGEXP operator */

select * from book where title REGEXP "^P[A-Za-z]+[A-Za-z]+$"; 

/* write a query to find all book where the title contain any special character ex "!", "@","#", using the REGEXP operator */
select * from book where  title REGEXP "[@]";
















