SELECT DISTINCT m.name AS nome ,COUNT(hr.music_id) AS reproducoes
FROM SpotifyClone.History_Reprodution hr
JOIN SpotifyClone.Music m
JOIN SpotifyClone.User u
JOIN SpotifyClone.Plan p
ON u.plan_id = p.plan_id AND
u.user_id = hr.user_id AND
m.music_id = hr.music_id
WHERE p.name = 'gratuito' OR p.name = 'pessoal'
GROUP BY m.name
ORDER BY nome
;