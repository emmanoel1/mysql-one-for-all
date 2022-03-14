SELECT MIN(signature.price) AS faturamento_minimo,
MAX(signature.price) AS faturamento_maximo,
ROUND(AVG(signature.price), 2) AS faturamento_medio,
SUM(signature.price) AS faturamento_total
FROM SpotifyClone.user
INNER JOIN SpotifyClone.signature
ON signature.plan_id = user.plan_id;
