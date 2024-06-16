
INSERT INTO platform_user(username, email, password, phone_number, profile_picture) VALUES ('mopsik27', 'ada.morf1@dogs.com','truskaweczkaja','782351094','puginlove.png')
INSERT INTO platform_user(username, email, password, phone_number, profile_picture) VALUES ('sqlover', 'witek123@gmail.com','programistazpowolania','253492105','pythonlogo.png')
INSERT INTO platform_user(username, email, password, phone_number, profile_picture) VALUES ('cherrycake','ludkiewicz.maria@gmail.com','4075owocowka','548372593','cherryontree.png')
INSERT INTO platform_user(username, email, password, phone_number, profile_picture) VALUES ('djungelskog','chodzedoikei@wowzakupy.com','H78ello90W0rlD2','678329477','ikeaplushie.png')
INSERT INTO platform_user(username, email, password, phone_number, profile_picture) VALUES ('mary95','mary.olsen@notthetwin.com','Truly8Madly3Deeply0','669852110','randompic.png')


INSERT INTO playlist(title, description, cover, id_user) VALUES ('sunny days','for when i want to relax','trees.png',3)
INSERT INTO playlist(title, description, cover, id_user) VALUES ('work playlist','trying to focus on my tasks','bloodsweatandtears.png',2)
INSERT INTO playlist(title, description, cover, id_user) VALUES ('cherries','<3','cherry.png',3)
INSERT INTO playlist(title, description, cover, id_user) VALUES ('Playlist #7',':)','smileyface.png',5)
INSERT INTO playlist(title, description, cover, id_user) VALUES ('shopping mode','probably in ikea right now','djungelskog.png',4)


INSERT INTO album(title, duration, cover, release_date) VALUES ('Jubilee','00:37:03','jubilee.png','2021-06-04')
INSERT INTO album(title, duration, cover, release_date) VALUES ('Aromanticism','00:34:51','aromanticism.png','2017-09-22')
INSERT INTO album(title, duration, cover, release_date) VALUES ('Oncle Jazz','01:11:00','jazz.png','2019-09-13')
INSERT INTO album(title, duration, cover, release_date) VALUES ('Loveworm','00:25:45','loveworm.png','2019-04-26')
INSERT INTO album(title, duration, cover, release_date) VALUES ('Bury Me At Makeout Creek','00:30:18','bury.png','2014-11-11')


INSERT INTO song(title, artist, duration, id_album) VALUES ('Lonely World','Moses Sumney','00:04:48', 2)
INSERT INTO song(title, artist, duration, id_album) VALUES ('Apple Cider','beabadoobee','00:02:58', 4)
INSERT INTO song(title, artist, duration, id_album) VALUES ('Pines','Men I Trust','00:03:42', 3)
INSERT INTO song(title, artist, duration, id_album) VALUES ('Paprika','Japanese Breakfast','00:03:40', 1)
INSERT INTO song(title, artist, duration, id_album) VALUES ('First Love/Late Spring','Mitski','00:04:38', 5)


INSERT INTO song_in_playlist(id_playlist, id_song) VALUES (1, 3)
INSERT INTO song_in_playlist(id_playlist, id_song) VALUES (2, 3)
INSERT INTO song_in_playlist(id_playlist, id_song) VALUES (4, 5)
INSERT INTO song_in_playlist(id_playlist, id_song) VALUES (5, 4)
INSERT INTO song_in_playlist(id_playlist, id_song) VALUES (3, 2)

INSERT INTO artist_page(artist, description, picture,monthly_listeners,following_number,most_streamed_song) 
VALUES ('beabadoobee', 'Born in the Philippines and raised in London, Bea Kristi began recording music in 2017, which is confessional bedroom pop songs and DIY aesthetic', 'beabadoobee.png','17,162,825', '3,472,825','death bed (coffe for your head')
INSERT INTO artist_page(artist, description, picture,monthly_listeners,following_number,most_streamed_song) 
VALUES ('Mitski', 'Mitski was born in Japan. She is a singer-songwriter and musician. Her debut album, Lush, was released in 2012. She is known for her slow, melancholy lyrics and exploring different anxieties.', 'mitski.png','30,995,382','7,763,413','My Love Mine All Mine')
INSERT INTO artist_page(artist, description, picture,monthly_listeners,following_number,most_streamed_song) 
VALUES ('Japanese Breakfast','An experimental pop band headed by Korean-American musician, director, and author Michelle Zauner.','japanese_breakfast.png','1,327,719','696,928','Be Sweet')
INSERT INTO artist_page(artist, description, picture,monthly_listeners,following_number,most_streamed_song) 
VALUES ('Men I Trust','A Canadian indie band formed in 2014, has quietly but profoundly left its mark on the music scene. The band is known for their hypnotic melodies and captivating vocals.','menitrust.png','7,996,731','1,801,980','Show Me How')
INSERT INTO artist_page(artist, description, picture,monthly_listeners,following_number,most_streamed_song) 
VALUES ('Moses Sumney','Sumney gained widespread attention by mesmerizing listeners with his ethereal voice and lyrics.','mosessumney.png','688,675','360,921','Make Out in My Car')



INSERT INTO artist_music(id_album, id_artist_page, ordered_releases) VALUES (4, 1, 'Patched Up; Loveworm; Fake It Flowers; Beatopia')
INSERT INTO artist_music(id_album, id_artist_page, ordered_releases) VALUES (5, 2, 'Lush; Retired from Sad, New Career in Business; Bury Me At Makeout Creek; Puberty 2; Be The Cowboy; Laurel Hell; The Land Is Inhospitable and So Are We')
INSERT INTO artist_music(id_album, id_artist_page, ordered_releases) VALUES (1, 3, 'Psychopomp; Soft Sounds from Another Planet; Jubilee')
INSERT INTO artist_music(id_album, id_artist_page, ordered_releases) VALUES (3, 4, 'Men I Trust; Headroom; Oncle Jazz; Untourable Album')
INSERT INTO artist_music(id_album, id_artist_page, ordered_releases) VALUES (2, 5, 'Mid-City Island; Lamentations; Aromanticism; græ')


INSERT INTO artist_post(content, post_date, id_artist_page) VALUES ('What if dating irl was like Stardew Valley and all you had to do was bring the person you like a coffee or a melon everyday and eventually they’d want to marry you','2019-06-21 05:37:43', 3)
INSERT INTO artist_post(content, post_date, id_artist_page) VALUES ('will be staring in the X sequel MaXXXine! hope you guys can tune in once the movie is out :)','2023-04-05 11:30:32', 5)
INSERT INTO artist_post(content, post_date, id_artist_page) VALUES ('guys!!! you can presave my newest album This Is How Tomorrow Moves!!! out august 16th xx','2024-05-10 04:39:12', 1)
INSERT INTO artist_post(content, post_date, id_artist_page) VALUES ('Whats your favorite song of the album so far guys? xx Hope youre enjoying as much as we are','2017-05-16 08:34:50', 3)


INSERT INTO comment(content, comment_date, id_user, id_post) VALUES ('Honestly with coffee I feel like it could work. Love this concept', '2019-06-21 05:49:02', 4, 1)
INSERT INTO comment(content, comment_date, id_user, id_post) VALUES ('i will DEFINITELY tune in!! such exciting news', '2023-04-06 01:35:02', 2, 2)
INSERT INTO comment(content, comment_date, id_user, id_post) VALUES ('Definitely Machinist!!! Something about the melody is extremely alluring :)', '2017-05-16 09:12:36', 3, 4)
INSERT INTO comment(content, comment_date, id_user, id_post) VALUES ('ahhhh im so excited for the release!! will there be a vinyl edition?', '2024-05-10 06:22:31', 5, 3)

