SELECT DISTINCT U.name AS usuario, 
IF(YEAR(MAX(H.date_reproduction)) >= 2021  , 'Usuário ativo', 'Usuário inativo') AS status_usuario 
FROM SpotifyClone.User U
JOIN SpotifyClone.History_Reprodution H
ON U.user_id = H.user_id
GROUP BY U.name
ORDER BY U.name;

