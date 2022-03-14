SELECT artist.artist AS artista,
album.album AS album,
COUNT(artist_follower.artist_id) AS seguidores
FROM SpotifyClone.artist
INNER JOIN SpotifyClone.album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.artist_follower
ON artist_follower.artist_id = artist.artist_id
GROUP BY artist.artist_id, album.album
ORDER BY seguidores DESC, artista, album;
