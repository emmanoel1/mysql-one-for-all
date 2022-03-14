SELECT artist.artist AS artista,
album.album AS album
FROM SpotifyClone.album
INNER JOIN SpotifyClone.artist ON artist.artist_id = album.artist_id
WHERE artist.artist = 'Walter Phoenix'
GROUP BY album.album;
