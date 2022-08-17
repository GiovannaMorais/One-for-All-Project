SELECT(
    SELECT COUNT(*) FROM SpotifyClone.Music) AS 'cancoes', 
    ( SELECT COUNT(*) FROM SpotifyClone.Artist) AS 'artistas',
    ( SELECT COUNT(*) FROM SpotifyClone.Album
) AS 'albuns';