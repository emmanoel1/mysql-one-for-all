SELECT song.song AS cancao,
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.song
INNER JOIN SpotifyClone.history
ON history.song_id = song.song_id
GROUP BY song.song
ORDER BY reproducoes DESC, cancao
LIMIT 2;
