-- -----------------------------------------------------
-- Schema full-stack-golf-project
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-golf-project`;

CREATE SCHEMA `full-stack-golf-project`;
USE `full-stack-golf-project` ;

-- -----------------------------------------------------
-- Table `full-stack-golf-project`.`golf_round`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-golf-project`.`golf_round` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE DEFAULT NULL,
  `course` VARCHAR(255) DEFAULT NULL,
  `weather` VARCHAR(255) DEFAULT NULL,
  `score` SMALLINT DEFAULT NULL,
  `friends` VARCHAR(255) DEFAULT NULL,
  `strangers` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(5,2) DEFAULT NULL,
  `course_rating` DECIMAL(5,2) DEFAULT NULL,
  `slope_rating` DECIMAL(5,2) DEFAULT NULL,
  `personal_rating` DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-golf-project`.`golf_hole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-golf-project`.`golf_hole` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `round_id` INT NOT NULL,
  `hole_number` TINYINT DEFAULT 0,
  `par` TINYINT DEFAULT 4,
  `hole_length` SMALLINT DEFAULT NULL,
  `tee_shot` BIT(1) DEFAULT 0,
  `green_in_regulation` BIT(1) DEFAULT 0,
  `putts` TINYINT DEFAULT 0,
  `SCORE` TINYINT DEFAULT 0,


  PRIMARY KEY (`id`),
  KEY `fk_id` (`round_id`),
  CONSTRAINT `fk_id` FOREIGN KEY (`round_id`) REFERENCES `golf_round` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
# COURSE 1

# Since the primary key id is auto increment we can neglect that as a parameter
INSERT INTO golf_round(date, course, weather, score, friends, strangers, 
price, course_rating, slope_rating, personal_rating ) VALUES (CURDATE(),
'Sandy Burr', 'Warm', 85, 'Brett Anders', '', 50, 75, 76, 77);

# HOLE 1
INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 1, 4, 425, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 2, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 3, 3, 150, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 4, 5, 475, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 5, 4, 425, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 6, 3, 170, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 7, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 8, 5, 525, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 9, 4, 375, 1, 1, 1, 3);

# HOLE 10
INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 10, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 11, 5, 475, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 12, 4, 375, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 13, 4, 350, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 14, 3, 135, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 15, 4, 410, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 16, 4, 380, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 17, 3, 150, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (1, 18, 5, 475, 1, 1, 1, 3);

################################################################################

# COURSE 2

INSERT INTO golf_round(date, course, weather, score, friends, strangers, 
price, course_rating, slope_rating, personal_rating ) VALUES (CURDATE(),
'Bethpage State Park', 'Cold', 85, 'TK', 'TKDad', 50, 75, 76, 77);

# HOLE 1
INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 1, 4, 425, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 2, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 3, 3, 150, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 4, 5, 475, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 5, 4, 425, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 6, 3, 170, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 7, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 8, 5, 525, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 9, 4, 375, 1, 1, 1, 3);

# HOLE 10
INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 10, 4, 400, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 11, 5, 475, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 12, 4, 375, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 13, 4, 350, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 14, 3, 135, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 15, 4, 410, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 16, 4, 380, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 17, 3, 150, 1, 1, 1, 3);

INSERT INTO golf_hole(round_id, hole_number, par, hole_length, tee_shot, 
green_in_regulation, putts, score) VALUES (2, 18, 5, 475, 1, 1, 1, 3);