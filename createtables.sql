DROP TABLE IF EXISTS paperauths cascade;
DROP TABLE IF EXISTS authors cascade;
DROP TABLE IF EXISTS venue cascade;
DROP TABLE IF EXISTS papers cascade;

CREATE TABLE paperauths (
    paperid int,
    authid int
);

CREATE TABLE authors (
   author_id INT PRIMARY KEY,
   author_name VARCHAR(100)
);

CREATE TABLE venue (
    id integer,
    name character varying(200) NOT NULL,
    year integer NOT NULL,
    school character varying(200),
    volume character varying(50),
    number character varying(50),
    type integer NOT NULL,
    primary key (id)
);


CREATE TABLE papers (
    id integer,
    name character varying(2048) NOT NULL,
    venue integer,
    pages character varying(50),
    url character varying(512),
    primary key(id),
    foreign key (venue) references venue(id)
);

COPY public."paperauths" 
FROM '[path to paperauths.csv]'
(FORMAT csv, HEADER, DELIMITER ',');

COPY public."authors" 
FROM '[path to authors.csv]'
(FORMAT csv, HEADER, DELIMITER ',');

COPY public."venue" 
FROM '[path to venue.csv]' 
(FORMAT csv, HEADER, DELIMITER ',');

COPY public."papers" 
FROM '[path to papers.csv]' 
(FORMAT csv, HEADER, DELIMITER ',');

SELECT papers.id as paper_id, papers.name as paper_name, authors.author_id as author_id,
authors.author_name as author_name, papers.pages as pages, papers.url as url,papers.venue as venue_id, venue.name as venue_name, venue.year as venue_year, venue.school as school,
venue.volume, venue.number, venue.type INTO dblp 
FROM papers, authors, venue, paperauths  
WHERE paperauths.authid = authors.author_id and 
paperauths.paperid = papers.id and
papers.venue = venue.id;



