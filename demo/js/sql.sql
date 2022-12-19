CREATE DATABASE IF NOT EXISTS lottery;
USE lottery;
CREATE TABLE IF NOT EXISTS game_type (gt_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS game_group (gp_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30), game_type INT UNSIGNED, FOREIGN KEY(game_type) REFERENCES 
game_type(gt_id)
);


CREATE TABLE IF NOT EXISTS game_name (gn_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30), game_group INT UNSIGNED, FOREIGN KEY(game_group) REFERENCES 
game_group(gp_id)
);