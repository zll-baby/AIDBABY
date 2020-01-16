-- 创建表 class_1
create table `class_1` (
id int primary key auto_increment,
name varchar(20) not null,
age tinyint unsigned not null,
sex enum('m','w','o'),
score float default 0
);

-- 创建表 interest
create table `interest` (
id int primary key auto_increment,
name varchar(20) not null,
hobby set('sing','dance','draw'),
level char,
price decimal(7,2),
remark text
);
create table  `marathon`(
id int primary key auto_increment,
athlete varchar (30) not null,
birthday date,
registeration_time datetime,
performance time
);
insert into marathon values
(1,'曹操','1990-1-9',"2019/12/28 18:33:25","2:14:55"),
(2,'朱仝','1996-12-5',"2020-1-1 10:10:11",'2:10:55');
--
-- 练习1：
-- *  创建数据库 books
-- *  在该数据库下创建数据表 book
--    字段如下：
--    id  书名  作者  出版社  价格  备注
--    数据类型和约束条件自己拟定
create database `books` charset=utf8;

create table book (
id int primary key auto_increment,
title varchar(30) not null,
author varchar(30) default '佚名',
publication varchar(50) not null,
price decimal(6,2),
comment text
);


-- 插入操作

insert into class_1
(name,age,sex,score)
values
('Lucy',17,'w',81);

insert into interest
values
(1,'Joy','sing','B',12800.00,"天籁之声");


-- *  在数据表book中插入几条数据（>4）
--    作者： 老舍   鲁迅   钱钟书  沈从文  冰心
--          韩寒   郭敬明
--
--    价格： 30 --- 120
--
--    出版社 ：  中国文学   中国教育   机械工业

insert into book (title,author,publication,price,comment) values
('边城','沈从文','机械工业出版社',36,'小城故事多'),
('骆驼祥子','老舍','机械工业出版社',87,'你是祥子么'),
('林家铺子','茅盾','中国文学出版社',42,'铺子');
('茶馆','老舍','中国教育出版社',70,'茶馆故事');


-- 查找
 select * from class_1 where score not  between 70 and 80;

select * from class_1 where age not in (17,18);

select * from class_1 where sex='w' xor score > 85;


查找价格30多的图书
select * from book where price >= 30 and price <40 ;
        查找出版社为中国教育出版社的
        select * from book where publication ='中国教育出版社';
        查找老舍写的，中国文学出版社的
        select *from author='老舍'and pulication='中国文学出版社';
        查找备注不为空的
        select *from book where comment is not noll;
        查找价格超过60的，只看书名和价格
        select title,price from book where price>60;
        查找价格超过100的或者鲁迅写的
        select *from book where price >100 or author ='鲁迅';
#更新表记录
update class_1 set score =63 where name ='haha';
#删除列表记录
delete from class_1 where score<60;
#添加字段到某个字段后面
alter table interest add tel char(16)not null after price;
#删除字段
alter table interest drop level;

alter table book add publication_date date after price;

update book set publication_date='2012-5-4' where author='老舍';

update book set book.publication_date='2016-10-1'where publication="人民教育出版社"and (not author='老舍');

delete from book where price > 80;

alter table book modify price decimal (5,2);
练习2 ： 在stu数据库中创建

   创建表:  sanguo

   id  name  gender  country   attack   defense
                                >100    0-100
   数据参考
   魏： 曹操  司马懿  夏侯渊  张辽  甄姬
   蜀： 刘备  关羽  赵云  诸葛亮  张飞  孙尚香
   吴： 周瑜  大乔  小乔  陆逊   吕蒙

综合训练
查找所有蜀国人信息，按照攻击力排名
select * from sanguo where country='蜀' order by attack desc;
将赵云的攻击力设为360 防御力设置为70
update sanguo set attack = 360,defense=70 where name='赵云';
吴国英雄攻击力超过300的改为300（最多改2个）
update sanguo set attack = 300 where country='吴'and attack > 300 limit 2;
查找攻击力高于250 的魏国英雄的名字和攻击力
select attack,name from sanguo where attack >250 and country='魏';
将所有英雄攻击力按照降序排序，如果攻击力相同则按照防御力降序排序
select * from sanguo order by attack desc,defense desc;
查找所有名字为3个字的英雄
select * from sanguo where name like "___";
找到魏国防御力前2名的英雄
select * from sanguo where country='魏' order by defense desc limit 2;
找到攻击力比魏国最高攻击力者还要高的蜀国英雄
select * from sanguo
where country='蜀'and attack >
(select * from sanguo where country='魏'
order by attack desc limit 1);
 找过所有女型角色中攻击力比诸葛亮还要高的英雄
select * from sanguo
where gender='w' and attack >
(select * from sanguo where name='诸葛亮');
 数据参考
   魏： 曹操  司马懿  夏侯渊  张辽  甄姬
   蜀： 刘备  关羽  赵云  诸葛亮  张飞  孙尚香
   吴： 周瑜  大乔  小乔  陆逊   吕蒙
 创建表:  sanguo
id  name  gender  country   attack   defense
                                >100    0-100


create table `sanguo`(
id int primary key auto_increment,
name varchar(20) not null,
gender  enum('m','w'),
country enum('魏','蜀','吴'),
attack smallint  not null,
defense tinyint not null);

 数据参考
   魏： 曹操  司马懿  夏侯渊  张辽  甄姬
   蜀： 刘备  关羽  赵云  诸葛亮  张飞  孙尚香
   吴： 周瑜  大乔  小乔  陆逊   吕蒙
insert into sanguo values
(1,'曹操','m','魏',350,90),
(2,'司马懿','m','魏',200,40),
(3,'夏侯渊','m','魏',160,20),
(4,'张辽','m','魏',100,0),
(5,'甄姬','w','魏',120,20),
(6,'刘备','m','蜀',350,60),
(7,'关羽','m','蜀',200,70),
(8,'赵云','m','蜀',270,50),
(9,'诸葛亮','m','蜀',400,80),
(10,'张飞','m','蜀',450,85),
(11,'孙尚香','w','蜀',300,75),
(12,'周瑜 ','m','吴',750,99),
(13,'大乔 ','w','吴',550,86),
(14,'小乔 ','w','吴',550,86),
(15,'陆逊 ','m','吴',450,66),
(16,'吕蒙 ','m','吴',320,90);




select title ,max(price) from book group by title;
select publication_date ,avg(price) from group by publication_date;
select book.publication_date,max(price) from book group by publication_date
select count(distinct title )from book;
