CREATE TABLE players
(
	player_id SERIAL PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	rating INT NOT NULL
);

CREATE TABLE openings
(
	eco VARCHAR(10) PRIMARY KEY,
	opening_name VARCHAR(50) NOT NULL,
	opening_ply INT NOT NULL
);

CREATE TABLE games
(
	game_id CHAR(8) PRIMARY KEY,
	game_date TIMESTAMP NOT NULL,
	time_control VARCHAR(10) NOT NULL,
	num_turns INT NOT NULL,
	game_result VARCHAR(10) NOT NULL,
	winner VARCHAR(5) NOT NULL,
	white_player INT NOT NULL,
	black_player INT NOT NULL,
	eco VARCHAR(10) NOT NULL,
	FOREIGN KEY (white_player) REFERENCES players(player_id),
	FOREIGN KEY (black_player) REFERENCES players(player_id),
	FOREIGN KEY (eco) REFERENCES openings(eco)
);