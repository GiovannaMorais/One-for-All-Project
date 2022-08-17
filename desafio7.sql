SELECT art.name AS artista,alb.name AS album,COUNT(seg.artist_id) AS seguidores
FROM SpotifyClone.Artist art
JOIN SpotifyClone.Album alb 
ON art.artist_id = alb.artist_id
JOIN SpotifyClone.Followers seg 
ON seg.artist_id = art.artist_id
GROUP BY art.name,alb.name
ORDER BY seguidores DESC,art.name,alb.name;
