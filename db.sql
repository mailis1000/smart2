CREATE DATABASE IF NOT EXISTS smart;

CREATE TABLE IF NOT EXISTS smart.make (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO smart.make (`name`) VALUES
  ('Acura'),
  ('Alfa Romeo'),
  ('Aston Martin'),
  ('Audi'),
  ('Bentley'),
  ('BMW'),
  ('Cadillac'),
  ('Chevrolet'),
  ('Chrysler'),
  ('Daewoo'),
  ('Dodge'),
  ('Ferrari'),
  ('FIAT'),
  ('Ford'),
  ('Honda'),
  ('HUMMER'),
  ('Hyundai'),
  ('Jaguar'),
  ('Jeep'),
  ('Kia'),
  ('Lamborghini'),
  ('Land Rover'),
  ('Lexus'),
  ('Mazda'),
  ('Mercedes-Benz'),
  ('Mitsubishi'),
  ('Nissan'),
  ('Peugeot'),
  ('Plymouth'),
  ('Pontiac'),
  ('Porsche'),
  ('Renault'),
  ('Saab'),
  ('Subaru'),
  ('Suzuki'),
  ('Toyota'),
  ('Volkswagen'),
  ('Volvo');

CREATE TABLE IF NOT EXISTS smart.model (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(30) NOT NULL,
  `model` VARCHAR(30) NOT NULL,
  `power` INT(8) NOT NULL,
  `year` int(8) NOT NULL,
  `fuel` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`)
)

INSERT INTO `model` (`id`, `make`, `model`, `power`, `year`, `fuel`) VALUES
(2, 'BMW', 'Mailis', 125, 2015, 'a');
