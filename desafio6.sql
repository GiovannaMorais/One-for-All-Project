SELECT ROUND(MIN(p.price),2) AS faturamento_minimo,
ROUND(MAX(p.price),2) AS faturamento_maximo,
ROUND(AVG(p.price), 2) AS faturamento_medio,
ROUND(SUM(p.price),2) AS faturamento_total
FROM SpotifyClone.Plan p
JOIN SpotifyClone.User u
ON u.plan_id = p.plan_id ;