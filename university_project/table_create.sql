-- A music streaming platform with the option to comment on your favorite artists' activities!

CREATE TABLE platform_user (
  id_user int not null identity(1,1) PRIMARY KEY,
  username VARCHAR(20) not null UNIQUE,
  email VARCHAR(255) not null UNIQUE,
  password VARCHAR(128) not null,
  phone_number VARCHAR(9) UNIQUE CHECK (phone_number LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  profile_picture VARCHAR(255) not null,
  );
  
CREATE TABLE playlist (
  id_playlist int not null identity(1,1) PRIMARY KEY,
  title VARCHAR(50) not null,
  description VARCHAR(255) not null,
  cover VARCHAR(255) not null,
  id_user int FOREIGN KEY references platform_user(id_user)
  );
  
CREATE TABLE album (
  id_album int not null identity(1,1) PRIMARY KEY,
  title VARCHAR(100) not null,
  duration VARCHAR(8) not null CHECK (duration LIKE '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]'),
  cover VARCHAR(255) not null, 
  release_date DATE not null
  );
  
CREATE TABLE song (
  id_song int not null identity(1,1) PRIMARY KEY,
  title VARCHAR(100) not null,
  artist VARCHAR(50) not null,
  duration VARCHAR(8) not null CHECK (duration LIKE '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]'),
  id_album int FOREIGN KEY references album(id_album)
  );
   
CREATE TABLE song_in_playlist (
  id_song_in_playlist int not null identity(1,1) PRIMARY KEY,
  id_playlist int FOREIGN KEY references playlist(id_playlist),
  id_song int FOREIGN KEY references song(id_song)
  );
  
CREATE TABLE artist_page (
  id_artist_page int not null identity(1,1) PRIMARY KEY,
  artist VARCHAR(50) not null,
  description VARCHAR(255) not null,
  picture VARCHAR(255) not null,
  monthly_listeners VARCHAR(12) not null DEFAULT 0,
  following_number VARCHAR(12) not null DEFAULT 0,
  most_streamed_song VARCHAR(50) not null,
  );
  
CREATE TABLE artist_music (
  id_music int not null identity(1,1) PRIMARY KEY,
  id_album int FOREIGN KEY references album(id_album),
  id_artist_page int FOREIGN KEY references artist_page(id_artist_page),
  ordered_releases VARCHAR(255) not null
  );
  
CREATE TABLE artist_post (
  id_post int not null identity(1,1) PRIMARY KEY,
  content VARCHAR(255) not null,
  post_date DATETIME not null,
  id_artist_page int FOREIGN KEY references artist_page(id_artist_page)
  );
 
CREATE TABLE comment (
  id_comment int not null identity(1,1) PRIMARY KEY,
  content VARCHAR(255) not null,
  comment_date DATETIME not null,
  id_user int FOREIGN KEY references platform_user(id_user),
  id_post int FOREIGN KEY references artist_post(id_post)
  ); 
  
