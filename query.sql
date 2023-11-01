-- Вивести id партіЇ, гравців та переможця з усіх партій гравця 'daniel_likes_chess', в яких він переміг
-- SELECT * FROM 
-- (SELECT DISTINCT game_id, (SELECT username FROM players WHERE player_id = white_player) AS w_player, (SELECT username FROM players WHERE player_id = black_player) AS b_player, winner 
-- FROM games JOIN players ON player_id IN (white_player, black_player)) AS r 
-- WHERE (w_player = 'daniel_likes_chess' AND winner = 'white') OR (b_player = 'daniel_likes_chess' AND winner = 'black');

-- Вивести контроль часу, переможця(колір) та кількість ходів  з усіх партій, в яких був розігран дебют 'Nimzowitsch Defense: Kennedy Variation'
-- SELECT time_control, winner, num_turns, opening_name FROM games JOIN openings USING(eco) 
-- WHERE opening_name = 'Nimzowitsch Defense: Kennedy Variation';

-- Висести id партіЇ, гравців, переможця та назву дебюту з усіх партій гравця 'a-00', в яких він грав чорними та було розіграно дебют 'Slav Defense: Exchange Variation' або 'King's Pawn Game: Leonardis Variation'
-- SELECT * FROM 
-- (SELECT DISTINCT game_id, (SELECT username FROM players WHERE player_id = white_player) AS w_player, (SELECT username FROM players WHERE player_id = black_player) AS b_player, winner, opening_name 
-- FROM games JOIN players ON (player_id IN (white_player, black_player)) JOIN openings USING(eco)) AS r 
-- WHERE b_player = 'a-00' AND opening_name IN ('Slav Defense: Exchange Variation', 'King''s Pawn Game: Leonardis Variation');