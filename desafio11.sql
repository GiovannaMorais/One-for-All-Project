SELECT name AS nome_musica,
CASE
	  WHEN name LIKE "%Amar%" THEN REPLACE( name, 'Amar', "Code Review")
	  WHEN name LIKE "%SUPERSTAR%" THEN REPLACE( name, 'SUPERSTAR', "SUPERDEV")
	  WHEN name LIKE "%Bard%" THEN REPLACE( name, 'Bard', "QA")
	  WHEN name LIKE "%SOUL%" THEN REPLACE( name, 'SOUL', "CODE")
	  WHEN name LIKE "%Pais%" THEN REPLACE( name, 'Pais', "Pull Requests")
END AS novo_nome
FROM SpotifyClone.Music
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;