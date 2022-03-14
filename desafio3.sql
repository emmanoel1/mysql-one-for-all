SELECT user.name AS usuario,
COUNT(DISTINCT(history.song_id)) AS qtde_musicas_ouvidas,
ROUND(SUM(song.duration / 60), 2) AS total_minutos
FROM SpotifyClone.user
INNER JOIN SpotifyClone.history
ON history.user_id = user.user_id
INNER JOIN SpotifyClone.song
ON song.song_id = history.song_id
GROUP BY user.name;