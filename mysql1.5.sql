create table hala(
 id int primary key auto_increment,
 title varchar(30) not null,
 author varchar(30) default '可爱',
 publication varchar(50) not null,
 price decimal(6,2),
 comment text);
