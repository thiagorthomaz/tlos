SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Tab_producing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_producing` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `income` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_building` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `level` INT NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `cost_wood` INT NOT NULL,
  `cost_stone` INT NOT NULL,
  `cost_iron` INT NOT NULL,
  `destruction_cost` INT NOT NULL,
  `build_time` INT NOT NULL,
  `destruction_time` INT(11) NOT NULL,
  `rank_point` INT(11) NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Tab_building_Tab_producing1_idx` (`level` ASC),
  CONSTRAINT `fk_Tab_building_Tab_producing1`
    FOREIGN KEY (`level`)
    REFERENCES `mydb`.`Tab_producing` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_resources`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_resources` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  `bonus_amout` INT NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_world`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_world` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(10) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_world` INT NOT NULL,
  `id_player` INT NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `total_points` INT NOT NULL,
  `x` INT NOT NULL,
  `y` INT NOT NULL,
  `z` INT NOT NULL,
  `amount_wood` INT NOT NULL,
  `amount_stone` INT NOT NULL,
  `amount_iron` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Tab_city_Tab_world1_idx` (`id_world` ASC),
  INDEX `fk_Tab_city_Tab_player1_idx` (`id_player` ASC),
  UNIQUE INDEX `z_UNIQUE` (`z` ASC),
  UNIQUE INDEX `y_UNIQUE` (`y` ASC),
  UNIQUE INDEX `x_UNIQUE` (`x` ASC),
  CONSTRAINT `fk_Tab_city_Tab_world1`
    FOREIGN KEY (`id_world`)
    REFERENCES `mydb`.`Tab_world` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_city_Tab_player1`
    FOREIGN KEY (`id_player`)
    REFERENCES `mydb`.`Tab_player` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city_Tab_building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city_Tab_building` (
  `id_city` INT NOT NULL,
  `id_building` INT NOT NULL,
  `x` INT NOT NULL,
  `y` INT NOT NULL,
  `z` INT NOT NULL,
  PRIMARY KEY (`id_city`, `id_building`),
  INDEX `fk_City_has_Tab_building_Tab_building1_idx` (`id_building` ASC),
  INDEX `fk_City_has_Tab_building_City1_idx` (`id_city` ASC),
  UNIQUE INDEX `x_UNIQUE` (`x` ASC),
  UNIQUE INDEX `y_UNIQUE` (`y` ASC),
  UNIQUE INDEX `z_UNIQUE` (`z` ASC),
  CONSTRAINT `fk_City_has_Tab_building_City1`
    FOREIGN KEY (`id_city`)
    REFERENCES `mydb`.`Tab_city` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_building_Tab_building1`
    FOREIGN KEY (`id_building`)
    REFERENCES `mydb`.`Tab_building` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city_has_resources`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city_has_resources` (
  `id_city` INT NOT NULL,
  `id_resources` INT NOT NULL,
  `x` INT NOT NULL,
  `y` INT NOT NULL,
  `z` INT NOT NULL,
  PRIMARY KEY (`id_city`, `id_resources`),
  INDEX `fk_City_has_Tab_resources_Tab_resources1_idx` (`id_resources` ASC),
  INDEX `fk_City_has_Tab_resources_City1_idx` (`id_city` ASC),
  UNIQUE INDEX `z_UNIQUE` (`z` ASC),
  UNIQUE INDEX `y_UNIQUE` (`y` ASC),
  UNIQUE INDEX `x_UNIQUE` (`x` ASC),
  CONSTRAINT `fk_City_has_Tab_resources_City1`
    FOREIGN KEY (`id_city`)
    REFERENCES `mydb`.`Tab_city` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_resources_Tab_resources1`
    FOREIGN KEY (`id_resources`)
    REFERENCES `mydb`.`Tab_resources` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_event_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_event_type` (
  `id` INT NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_event` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_event_type` INT NOT NULL,
  `initialized` TIMESTAMP NOT NULL,
  `active` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Tab_event_Tab_event_type1_idx` (`id_event_type` ASC),
  CONSTRAINT `fk_Tab_event_Tab_event_type1`
    FOREIGN KEY (`id_event_type`)
    REFERENCES `mydb`.`Tab_event_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_bonus_building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_bonus_building` (
  `id` INT NOT NULL,
  `efficiency` INT NOT NULL,
  `storage` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Tab_bonus_building_Tab_producing1`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`Tab_producing` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_building_requirement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_building_requirement` (
  `id_building` INT NOT NULL,
  `id_building_required` INT NOT NULL,
  PRIMARY KEY (`id_building`, `id_building_required`),
  INDEX `fk_Tab_building_requirement_Tab_building2_idx` (`id_building_required` ASC),
  CONSTRAINT `fk_Tab_building_requirement_Tab_building1`
    FOREIGN KEY (`id_building`)
    REFERENCES `mydb`.`Tab_building` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_building_requirement_Tab_building2`
    FOREIGN KEY (`id_building_required`)
    REFERENCES `mydb`.`Tab_building` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_storage_building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_storage_building` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `level` INT NOT NULL,
  `storage` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Tab_storage_building_Tab_producing1_idx` (`level` ASC),
  CONSTRAINT `fk_Tab_storage_building_Tab_producing1`
    FOREIGN KEY (`level`)
    REFERENCES `mydb`.`Tab_producing` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_player_has_world`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_player_has_world` (
  `id_player` INT NOT NULL,
  `id_world` INT NOT NULL,
  PRIMARY KEY (`id_player`, `id_world`),
  INDEX `fk_Tab_player_has_Tab_world_Tab_world1_idx` (`id_world` ASC),
  INDEX `fk_Tab_player_has_Tab_world_Tab_player1_idx` (`id_player` ASC),
  CONSTRAINT `fk_Tab_player_has_Tab_world_Tab_player1`
    FOREIGN KEY (`id_player`)
    REFERENCES `mydb`.`Tab_player` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_player_has_Tab_world_Tab_world1`
    FOREIGN KEY (`id_world`)
    REFERENCES `mydb`.`Tab_world` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
