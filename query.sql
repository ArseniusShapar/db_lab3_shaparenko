-- Кількість партій, в яких був розіграний кожен дебют
SELECT eco, opening_name, COUNT(game_id) AS games_count FROM games RIGHT JOIN openings USING(eco) GROUP BY eco;


-- Кількість перемог кожної сторони(або нічиїх)
SELECT (SELECT COUNT(*) FROM games WHERE winner = 'white') AS white_wins, 
	   (SELECT COUNT(*) FROM games WHERE winner = 'black') AS black_wins,
	   (SELECT COUNT(*) FROM games WHERE winner = 'draw') AS draws;


-- Сумарна кількість перемог гравців з кожного рейтинга
SELECT rating, SUM(wins) AS wins FROM 
(SELECT rating, (SELECT COUNT(*) FROM games WHERE (white_player = player_id AND winner = 'white') OR (black_player = player_id AND winner = 'black')) AS wins FROM players) AS r
GROUP BY rating
ORDER BY rating;