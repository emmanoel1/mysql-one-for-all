SELECT COUNT(song.song) AS cancoes,
COUNT(DISTINCT(artist.artist_id)) AS artistas,
COUNT(DISTINCT(album.album_id)) AS albuns
FROM SpotifyClone.song
INNER JOIN SpotifyClone.album
ON album.album_id = song.album_id
INNER JOIN SpotifyClone.artist
ON artist.artist_id = album.artist_id;
