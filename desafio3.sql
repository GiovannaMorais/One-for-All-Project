SELECT u.name AS usuario,COUNT(hr.music_id)AS qt_de_musicas_ouvidas, ROUND(SUM(m.duration_seg/60),2) AS total_minutos 
FROM SpotifyClone.User AS u 
JOIN SpotifyClone.History_Reprodution AS hr
ON u.user_id = hr.user_id 
JOIN SpotifyClone.Music AS m ON hr.music_id = m.music_id
GROUP BY u.name
ORDER BY u.name;
