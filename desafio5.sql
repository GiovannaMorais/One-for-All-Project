SELECT m.name AS cancao,COUNT( hr.music_id) AS reproducoes
FROM SpotifyClone.History_Reprodution hr
JOIN SpotifyClone.Music m
ON m.music_id = hr.music_id
GROUP BY m.name 
ORDER BY reproducoes DESC,cancao 
LIMIT 2;