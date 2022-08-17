SELECT COUNT(h.music_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.History_Reprodution h
JOIN SpotifyClone.User u
ON u.user_id = h.user_id
WHERE u.name = "Barbara Liskov";