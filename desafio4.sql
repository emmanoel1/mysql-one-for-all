SELECT user.name AS usuario,
IF (YEAR(MAX(history.date)) = '2021','Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.user
INNER JOIN SpotifyClone.history
ON history.user_id = user.user_id
GROUP BY user.name;
