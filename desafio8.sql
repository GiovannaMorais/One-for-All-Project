SELECT art.name AS artista,alb.name AS album 
FROM SpotifyClone.Artist art
JOIN SpotifyClone.Album alb 
ON art.artist_id = alb.artist_id
HAVING art.name = 'Elis Regina';