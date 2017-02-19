create database oficinamecanica;
use oficinamecanica;

create table os (
registro int primary key auto_increment,
osnum int not null,
codfun int not null,
codveic int not null,
placa char(7) not null,
descricaoveic varchar(40) not null,
dataemissao date not null,
dataprevista date,
dataconclusao date,
item varchar(40) not null,
valor decimal(9,2) not null
);

insert into os 
(osnum, codfun, codveic, placa, descricaoveic, dataemissao, dataprevista, dataconclusao, item, valor) values
('1', '10', '1', 'ocj1901', 'Moto Fan 150', '2015-11-12', '2015-11-15', '2015-11-15', 'Bateria 4 Amperes', '165.00'),
('1', '10', '1', 'ocj1901', 'Moto Fan 150', '2015-11-12', '2015-11-15', '2015-11-15', 'Tanque', '200.00'),
('1', '10', '1', 'ocj1901', 'Moto Fan 150', '2015-11-12', '2015-11-15', '2015-11-15', 'Troca Oleo', '22.00'),
('2', '15', '3', 'ocq3022', 'Ranger Preta', '2015-11-12', '2015-11-14', '2015-11-20', '2 Amortecedores', '790.00'),
('2', '15', '3', 'ocq3022', 'Ranger Preta', '2015-11-12', '2015-11-14', '2015-11-20', '1 Pneu', '350.00'),
('2', '15', '3', 'ocq3022', 'Ranger Preta', '2015-11-12', '2015-11-14', '2015-11-20', 'Mão de Obra', '200.00'),
('3', '20', '2', 'ocd2065', 'Gol Branco', '2015-11-12', '2015-11-25', '2015-11-29', 'Capô', '490.00'),
('3', '20', '2', 'ocd2065', 'Gol Branco', '2015-11-12', '2015-11-25', '2015-11-29', '2 Paralamas', '600.00'),
('3', '20', '2', 'ocd2065', 'Gol Branco', '2015-11-12', '2015-11-25', '2015-11-29', '2 Faróis', '950.00'),
('3', '20', '2', 'ocd2065', 'Gol Branco', '2015-11-12', '2015-11-25', '2015-11-29', 'Mão de Obra', '300.00');

create user 'funcionario'@'%' identified by '1234';
grant all privileges on oficinamecanica.os to 'funcionario'@'%';
flush privileges;

