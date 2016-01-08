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
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_mapper`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_mapper` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `x` INT NOT NULL,
  `y` INT NOT NULL,
  `z` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_mapper` INT NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `total_points` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_City_Tab_mapper1_idx` (`id_mapper` ASC),
  CONSTRAINT `fk_City_Tab_mapper1`
    FOREIGN KEY (`id_mapper`)
    REFERENCES `mydb`.`Tab_mapper` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city_Tab_building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city_Tab_building` (
  `id_city` INT NOT NULL,
  `id_building` INT NOT NULL,
  `id_mapper` INT NOT NULL,
  PRIMARY KEY (`id_city`, `id_building`, `id_mapper`),
  INDEX `fk_City_has_Tab_building_Tab_building1_idx` (`id_building` ASC),
  INDEX `fk_City_has_Tab_building_City1_idx` (`id_city` ASC),
  INDEX `fk_Tab_city_Tab_building_Tab_mapper1_idx` (`id_mapper` ASC),
  CONSTRAINT `fk_City_has_Tab_building_City1`
    FOREIGN KEY (`id_city`)
    REFERENCES `mydb`.`Tab_city` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_building_Tab_building1`
    FOREIGN KEY (`id_building`)
    REFERENCES `mydb`.`Tab_building` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_city_Tab_building_Tab_mapper1`
    FOREIGN KEY (`id_mapper`)
    REFERENCES `mydb`.`Tab_mapper` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city_has_resources`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city_has_resources` (
  `id_city` INT NOT NULL,
  `id_resources` INT NOT NULL,
  `id_mapper` INT NOT NULL,
  PRIMARY KEY (`id_city`, `id_resources`, `id_mapper`),
  INDEX `fk_City_has_Tab_resources_Tab_resources1_idx` (`id_resources` ASC),
  INDEX `fk_City_has_Tab_resources_City1_idx` (`id_city` ASC),
  INDEX `fk_Tab_city_has_resources_Tab_mapper1_idx` (`id_mapper` ASC),
  CONSTRAINT `fk_City_has_Tab_resources_City1`
    FOREIGN KEY (`id_city`)
    REFERENCES `mydb`.`Tab_city` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_resources_Tab_resources1`
    FOREIGN KEY (`id_resources`)
    REFERENCES `mydb`.`Tab_resources` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_city_has_resources_Tab_mapper1`
    FOREIGN KEY (`id_mapper`)
    REFERENCES `mydb`.`Tab_mapper` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(10) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tab_city_instance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tab_city_instance` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_player` INT NOT NULL,
  `id_city` INT NOT NULL,
  `amout_wood` INT NOT NULL,
  `amout_stone` INT NOT NULL,
  `amout_iron` INT NOT NULL,
  PRIMARY KEY (`id`, `id_player`, `id_city`),
  INDEX `fk_Tab_city_instance_Tab_player1_idx` (`id_player` ASC),
  INDEX `fk_Tab_city_instance_Tab_city1_idx` (`id_city` ASC),
  CONSTRAINT `fk_Tab_city_instance_Tab_player1`
    FOREIGN KEY (`id_player`)
    REFERENCES `mydb`.`Tab_player` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_city_instance_Tab_city1`
    FOREIGN KEY (`id_city`)
    REFERENCES `mydb`.`Tab_city` (`id`)
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
  `id` INT NOT NULL,
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


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
