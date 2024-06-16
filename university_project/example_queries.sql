--Example queries:

--1. Display albums released between 2017 and 2020.

SELECT * FROM album WHERE release_date BETWEEN '2017-01-01' AND '2020-01-01'

--2. Display the oldest album.

SELECT TOP 1 * FROM album ORDER BY release_date

--3. Display songs which are longer than 4 minutes.

SELECT id_song, title, artist FROM song WHERE duration > '00:04:00'

--4. For each comment, display the id and username of the person who commented.

SELECT platform_user.id_user, platform_user.username, comment.content FROM platform_user
INNER JOIN comment ON platform_user.id_user = comment.id_comment

--5. For each playlist, display the songs it contains. Sort the results alphabetically by playlist titles.

SELECT playlist.id_playlist, playlist.title, song.title FROM playlist
INNER JOIN song_in_playlist ON song_in_playlist.id_playlist = playlist.id_playlist
INNER JOIN song ON song.id_song = song_in_playlist.id_song ORDER BY playlist.title

--6. For each post, display its content, publication date, and author (artist). Sort alphabetically by artist name.

SELECT artist_post.content, artist_post.post_date, artist_page.artist FROM artist_post
INNER JOIN artist_page ON artist_page.id_artist_page = artist_post.id_artist_page 
ORDER BY artist_page.artist 

--7. Search for users whose username starts with the letter "m". Sort the results ascendingly by id.

SELECT id_user, username FROM platform_user WHERE username LIKE 'm%' ORDER BY id_user

--8. Display albums released in September. Sort alphabetically by album name.

SELECT title, release_date FROM album WHERE MONTH(release_date) = 09 ORDER BY title 

--9. Display users who have not commented on any posts on the platform so far.

SELECT platform_user.username, comment.id_comment FROM platform_user
LEFT JOIN comment ON platform_user.id_user = comment.id_user
WHERE id_comment is null

--10. For each commenter (username), calculate the number of comments. Sort the result in 
--descending order based on the number of comments

SELECT platform_user.id_user, platform_user.username, COUNT(comment.id_comment) AS 'amount of comments'
FROM platform_user LEFT JOIN comment ON platform_user.id_user = comment.id_user
GROUP BY platform_user.id_user, platform_user.username
ORDER BY 'amount of comments' DESC 

--11. Display song titles that start with the letter "a" or end with the letter "g".

SELECT title, artist FROM song WHERE title LIKE 'a%' OR title LIKE '%g'

 