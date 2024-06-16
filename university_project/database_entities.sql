--PROCEDURES

--1. Procedure named add_new_artist, which allows the creation of a page for an artist who does not yet have one:

/*
CREATE procedure add_new_artist @artist varchar(50), @description varchar(255),
@picture varchar(255), @monthly_listeners varchar(12), @following_number varchar(12), @most_streamed_song varchar(50)

AS

INSERT INTO artist_page(artist, description, picture, monthly_listeners, following_number, most_streamed_song)
VALUES (@artist, @description, @picture, @monthly_listeners, @following_number, @most_streamed_song)

EXEC add_new_artist @artist = 'Chappell Roan', @description = 'A rising star on the music scene',
@picture = 'chappellroan.png', @monthly_listeners = '19,078,216', @following_number = '1,001,411', 
@most_streamed_song = 'Good Luck, Babe!'

SELECT * from artist_page WHERE id_artist_page = 6
*/

--2. Procedure named album_info, which takes one parameter (the album name) and displays all information from the 
--albums table about the specified album:

/*
CREATE procedure album_info @title varchar(100)

AS

SELECT * from ALBUM where title = @title

EXEC album_info @title='Jubilee'

*/

--FUNCTIONS

--1. A function named user_commentary, which will return the number of comments for a user with a given identifier.

/*
create function user_commentary (@id int)

returns INT
AS
BEGIN
return (select count(*) from comment where id_user = @id)
end  

select dbo.user_commentary(1) as activity
*/

--2. A function named album_number, which has two parameters date_from and date_to. 
-- The function returns the number of albums released within the specified time interval.

/*
CREATE function album_number (@date_from datetime, @date_to datetime)
returns INT
AS
BEGIN
return (SELECT COUNT(*) FROM album WHERE release_date BETWEEN @date_from AND @date_to)
END

--select dbo.album_number('2019-01-01','2022-01-01') as count
*/

--VIEWS

--1. A view named playlist_report containing information about the number of playlists for each user (id_user, username).
--Include users who do not have any playlists.
--Find users who have more than one playlist.

/*
create view playlist_raport as

select platform_user.id_user, platform_user.username, count(playlist.id_playlist) as amount
from platform_user left join playlist
on platform_user.id_user =playlist.id_user
group by platform_user.id_user, platform_user.username

select * from playlist_raport where amount > 1

*/

--2. A view named comments_report containing information about the number of comments left by each user (id_user, username).
--Include users who have not left any comments.
--Find users who have not left any comments yet.

/*
create view comments_raport as

select platform_user.id_user, platform_user.username, count(comment.id_comment) as comments_left
from platform_user left join comment
on platform_user.id_user = comment.id_user
group by platform_user.id_user, platform_user.username

select * from comments_raport where comments_left = 0

*/

