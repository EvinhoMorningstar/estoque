-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_estoque
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_estoque
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_estoque` DEFAULT CHARACTER SET utf8 ;
USE `db_estoque` ;

-- -----------------------------------------------------
-- Table `db_estoque`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_estoque`.`marcas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `ativo` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_estoque`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_estoque`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `marcas_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_marcas_idx` (`marcas_id` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_marcas`
    FOREIGN KEY (`marcas_id`)
    REFERENCES `db_estoque`.`marcas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
