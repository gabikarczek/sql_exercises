--PROCEDURES

--1. Procedure named add_new_artist, which allows the creation of a page for an artist who does not yet have one:


CREATE procedure add_new_artist @artist varchar(50), @description varchar(255),
@picture varchar(255), @monthly_listeners varchar(12), @following_number varchar(12), @most_streamed_song varchar(50)

AS

INSERT INTO artist_page(artist, description, picture, monthly_listeners, following_number, most_streamed_song)
VALUES (@artist, @description, @picture, @monthly_listeners, @following_number, @most_streamed_song)

EXEC add_new_artist @artist = 'Chappell Roan', @description = 'A rising star on the music scene',
@picture = 'chappellroan.png', @monthly_listeners = '19,078,216', @following_number = '1,001,411', 
@most_streamed_song = 'Good Luck, Babe!'

SELECT * FROM artist_page WHERE id_artist_page = 6


--2. Procedure named album_info, which takes one parameter (the album name) and displays all information from the 
--albums table about the specified album:


CREATE procedure album_info @title varchar(100)

AS

SELECT * FROM ALBUM WHERE title = @title

EXEC album_info @title='Jubilee'



--FUNCTIONS

--1. A function named user_commentary, which will return the number of comments for a user with a given identifier.


CREATE FUNCTION user_commentary (@id int)

returns INT
AS
BEGIN
return (SELECT COUNT(*) FROM comment WHERE id_user = @id)
end  

SELECT dbo.user_commentary(1) AS activity


--2. A function named album_number, which has two parameters date_from and date_to. 
-- The function returns the number of albums released within the specified time interval.


CREATE function album_number (@date_from datetime, @date_to datetime)
returns INT
AS
BEGIN
return (SELECT COUNT(*) FROM album WHERE release_date BETWEEN @date_from AND @date_to)
END

SELECT dbo.album_number('2019-01-01','2022-01-01') AS amount


--VIEWS

--1. A view named playlist_report containing information about the number of playlists for each user (id_user, username).
--Include users who do not have any playlists.
--Find users who have more than one playlist.


CREATE view playlist_raport AS

SELECT platform_user.id_user, platform_user.username, COUNT(playlist.id_playlist) AS amount
FROM platform_user LEFT JOIN playlist
ON platform_user.id_user =playlist.id_user
GROUP BY platform_user.id_user, platform_user.username

SELECT * FROM playlist_raport WHERE amount > 1


--2. A view named comments_report containing information about the number of comments left by each user (id_user, username).
--Include users who have not left any comments.
--Find users who have not left any comments yet.


CREATE view comments_raport AS

SELECT platform_user.id_user, platform_user.username, COUNT(comment.id_comment) AS comments_left
FROM platform_user LEFT JOIN comment
ON platform_user.id_user = comment.id_user
GROUP BY platform_user.id_user, platform_user.username

SELECT * FROM comments_raport WHERE comments_left = 0



