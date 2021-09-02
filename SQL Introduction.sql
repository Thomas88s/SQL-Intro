 SELECT * FROM Genre;

SELECT * FROM Artist ORDER BY ArtistName;

SELECT Title, ArtistName FROM Song JOIN Artist ON Artist.id = Song.ArtistId 

SELECT DISTINCT ArtistName FROM Artist JOIN Album ON Album.ArtistId = Artist.id JOIN Genre ON Album.GenreId = Genre.id WHERE Genre.Name = 'Soul';

SELECT DISTINCT ArtistName, Genre.Name FROM Artist JOIN Album ON Album.ArtistId = Artist.id JOIN Genre ON Album.GenreId = Genre.id WHERE Genre.Name = 'Jazz' OR Genre.Name = 'Rock';

SELECT Album.Title FROM Album JOIN Song ON Album.id = AlbumId WHERE Song.Title IS NULL;

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Led Zeppelin', 1968);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Led Zeppelin I', '01/12/1969', 2696, 'Atlantic', 55, 20);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Led Zeppelin II', '10/22/1969', 2498, 'Atlantic', 55, 20);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Led Zeppelin III', '10/05/1970', 2584, 'Atlantic', 55, 20);
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Led Zeppelin IV', '11/08/1971', 2554, 'Atlantic', 55, 20);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Good Times Bas Times', 166, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('You Shook Me', 388, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Your Time Is Gonna Come',275 , '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Communication Breakdown', 149, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('How Many More Times', 509, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Babe I"m Gonna Leave You', 402, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Dazed and Confused', 388, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Black Mountain Side', 126, '01/12/1969', 20, 55, 45);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('I Can"t Quit You Baby', 282, '01/12/1969', 20, 55, 45);

Select ArtistName, Album.Title, Song.Title From Artist LEFT Join Album ON Album.ArtistId = Artist.id LEFT JOIN Song ON Song.AlbumId = Album.Id WHERE ArtistName = 'Led Zeppelin'; 

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;

SELECT Album.Title, COUNT(Song.Title) 'Number of Songs' FROM Album LEFT JOIN Song ON Song.AlbumId = Album.Id GROUP BY Album.Title;

SELECT ArtistName, COUNT(song.Title) 'Number of Songs' FROM Artist LEFT JOIN Song ON Song.ArtistId = Artist.Id GROUP BY ArtistName;

SELECT Genre.Name Genre, COUNT(song.Title) 'Number of Songs' FROM Song LEFT JOIN Genre ON Song.GenreId = Genre.Id GROUP BY Genre.Name;

SELECT DISTINCT Label, ArtistName  FROM Artist  JOIN Album ON ArtistId = Artist.Id;

SELECT Title, MAX(AlbumLength) FROM Album GROUP BY Title, AlbumLength;

SELECT DISTINCT Album.Title, Song.Title, MAX(SongLength) AS SongLength FROM Song LEFT JOIN Album ON AlbumId = Album.Id GROUP BY Album.Title, Song.Title, SongLength;




