/* We have to drop any existing table/database if already created, otherwise
the table won't be created */
drop database if exists Myvideos;
create database MyVideos; use MyVideos;
 
 /* Solution to Quetion 1 */
 CREATE TABLE videos (title varchar(255), length mediumint default 0,
 primary key (ID), url varchar(255), ID mediumint not null 
 auto_increment); 
 
 INSERT INTO VIDEOS (title, length, url) VALUES ('What Is Calculus', 2.56, 'https://www.youtube.com/watch?v=tXnYk5zLPTI');
 INSERT INTO VIDEOS (title, length, url) VALUES ('Hands-on dplyr tutorial for faster data manipulation in R', 38.57, 'https://www.youtube.com/watch?v=jWjqLW-u3hc');
 INSERT INTO VIDEOS (title, length, url) VALUES ('MySQL Tutorial for Beginners - 1 - Creating a Database and Adding Tables to it ', 8.49, 'https://www.youtube.com/watch?v=FAXhXI2Gxdc');
 
 /* QUESTION 2,  Creating and populating Reviewers table */
 
 create TABLE 2REVIEWERS
 (username varchar(255), rating int(4),
 review varchar(255),
 ID mediumint null);  
 
 INSERT INTO 2REVIEWERS(USERNAME, RATING, REVIEW, ID) VALUES ('CHECK4U', 5, 'Nice Job On Your Video, You Nail It!!!', 3);
 INSERT INTO 2REVIEWERS(USERNAME, RATING, REVIEW, ID) VALUES ('master of arts', 3, 'Good Video, But You Still Do Better, Seat Tight!!!', 4);
 INSERT INTO 2REVIEWERS(USERNAME, RATING, REVIEW, ID) VALUES ('I See You', 4, 'Excellente!, Best Job Next Time, Youre On Point!!!', 1);
 
 /* Joining The Two Tables Together */
 
 SELECT VIDEOS.length, VIDEOS.title, VIDEOS.url, 2REVIEWERS.RATING, 2REVIEWERS.REVIEW, 2REVIEWERS.ID 
 FROM videos
 RIGHT OUTER JOIN 2REVIEWERS
 ON 2REVIEWERS.ID = VIDEOS.ID
 LIMIT 2;
 