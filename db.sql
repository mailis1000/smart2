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
);

INSERT INTO smart.model (`make`, `model`, `power`, `year`, `fuel`) VALUES
  ('Volvo', 'V50', 100, 2006, 'Diesel'),
  ('Volvo', 'XC70', 146, 2012, 'Diesel'),
  ('Volvo', 'S80', 123, 2006, 'Diesel'),
  ('Volvo', 'S80', 132, 2012, 'Diesel'),
  ('Peugeot', '407', 85, 2009, 'Petrol'),
  ('Peugeot', '407', 85, 2008, 'Petrol/Gas');