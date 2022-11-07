Microsoft Windows [Version 10.0.22000.1098]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LEGION>cd\

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql.exe -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.25-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| classicmodels      |
| information_schema |
| latihan_mysql      |
| mysql              |
| northwind          |
| performance_schema |
| phpmyadmin         |
| toko               |
+--------------------+
8 rows in set (0.035 sec)

MariaDB [(none)]> USE latihan_mysql
Database changed
MariaDB [latihan_mysql]> SHOW TABLES;
+-------------------------+
| Tables_in_latihan_mysql |
+-------------------------+
| customers               |
| items                   |
| orders                  |
| products                |
+-------------------------+
4 rows in set (0.008 sec)

MariaDB [latihan_mysql]> SHOW CREATE TABLE customers;
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table     | Create Table                                                                                                                                                |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| customers | CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.045 sec)

MariaDB [latihan_mysql]> SHOW CREATE TABLE items;
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| items | CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_product_id` (`product_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.015 sec)

MariaDB [latihan_mysql]> SHOW CREATE TABLE orders;
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                                                                                       |
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orders | CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 |
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.014 sec)

MariaDB [latihan_mysql]> SHOW CREATE TABLE products;
+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                 |
+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| products | CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 |
+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.022 sec)

MariaDB [latihan_mysql]> DESCRIBE customers;
+-------+----------+------+-----+---------+----------------+
| Field | Type     | Null | Key | Default | Extra          |
+-------+----------+------+-----+---------+----------------+
| id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| name  | char(50) | NO   |     | NULL    |                |
+-------+----------+------+-----+---------+----------------+
2 rows in set (0.010 sec)

MariaDB [latihan_mysql]> ALTER TABLE customers
    -> ADD COLUMN city CHAR(50) NOT NULL;
Query OK, 0 rows affected (0.026 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [latihan_mysql]> ALTER TABLE customers
    -> ADD COLUMN country CHAR(50) NOT NULL;
Query OK, 0 rows affected (0.015 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+----------+------+-----+---------+----------------+
| Field   | Type     | Null | Key | Default | Extra          |
+---------+----------+------+-----+---------+----------------+
| id      | int(11)  | NO   | PRI | NULL    | auto_increment |
| name    | char(50) | NO   |     | NULL    |                |
| city    | char(50) | NO   |     | NULL    |                |
| country | char(50) | NO   |     | NULL    |                |
+---------+----------+------+-----+---------+----------------+
4 rows in set (0.017 sec)

MariaDB [latihan_mysql]> INSERT INTO customers (name,city,country)
    -> VALUES ('Hakim', 'Cirebon', 'Indonesia');
Query OK, 1 row affected (0.046 sec)

MariaDB [latihan_mysql]> INSERT INTO customers (name, city, country)
    -> VALUES ('Manda', 'Jogja','Indonesia')
    -> ;
Query OK, 1 row affected (0.010 sec)

MariaDB [latihan_mysql]> DESCRIBE products;
+-------+---------------+------+-----+---------+----------------+
| Field | Type          | Null | Key | Default | Extra          |
+-------+---------------+------+-----+---------+----------------+
| id    | int(11)       | NO   | PRI | NULL    | auto_increment |
| name  | char(50)      | NO   |     | NULL    |                |
| price | decimal(10,2) | NO   |     | NULL    |                |
+-------+---------------+------+-----+---------+----------------+
3 rows in set (0.015 sec)

MariaDB [latihan_mysql]> INSERT INTO products (name, price)
    -> VALUES ('Windows 10 Pro', 1500000);
Query OK, 1 row affected (0.012 sec)

MariaDB [latihan_mysql]> INSERT INTO products (name, price)
    -> VALUES ('Kursus Belajar Mysql', 300000);
Query OK, 1 row affected (0.002 sec)

MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+----------+------+-----+---------+----------------+
| Field   | Type     | Null | Key | Default | Extra          |
+---------+----------+------+-----+---------+----------------+
| id      | int(11)  | NO   | PRI | NULL    | auto_increment |
| name    | char(50) | NO   |     | NULL    |                |
| city    | char(50) | NO   |     | NULL    |                |
| country | char(50) | NO   |     | NULL    |                |
+---------+----------+------+-----+---------+----------------+
4 rows in set (0.016 sec)

MariaDB [latihan_mysql]> SELECT id, name, city, countr
    -> FROM customers;
ERROR 1054 (42S22): Unknown column 'countr' in 'field list'
MariaDB [latihan_mysql]> SELECT id, name, city, country
    -> FROM customers;
+----+-------+---------+-----------+
| id | name  | city    | country   |
+----+-------+---------+-----------+
|  1 | Hakim | Cirebon | Indonesia |
|  2 | Manda | Jogja   | Indonesia |
+----+-------+---------+-----------+
2 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+-------+---------+-----------+
| id | name  | city    | country   |
+----+-------+---------+-----------+
|  1 | Hakim | Cirebon | Indonesia |
|  2 | Manda | Jogja   | Indonesia |
+----+-------+---------+-----------+
2 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT name, city
    -> FROM customers;
+-------+---------+
| name  | city    |
+-------+---------+
| Hakim | Cirebon |
| Manda | Jogja   |
+-------+---------+
2 rows in set (0.000 sec)

MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+----------+------+-----+---------+----------------+
| Field   | Type     | Null | Key | Default | Extra          |
+---------+----------+------+-----+---------+----------------+
| id      | int(11)  | NO   | PRI | NULL    | auto_increment |
| name    | char(50) | NO   |     | NULL    |                |
| city    | char(50) | NO   |     | NULL    |                |
| country | char(50) | NO   |     | NULL    |                |
+---------+----------+------+-----+---------+----------------+
4 rows in set (0.013 sec)

MariaDB [latihan_mysql]> INSERT INTO customers (name, city, country)
    -> VALUES ('Kaguya', 'Konoha', 'Jepang');
Query OK, 1 row affected (0.011 sec)

MariaDB [latihan_mysql]> UPDATE customers
    -> SET name ='Gara' , city = 'Sunagakure'
    -> WHERE id = 1 ;
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+--------+------------+-----------+
| id | name   | city       | country   |
+----+--------+------------+-----------+
|  1 | Gara   | Sunagakure | Indonesia |
|  2 | Manda  | Jogja      | Indonesia |
|  3 | Kaguya | Konoha     | Jepang    |
+----+--------+------------+-----------+
3 rows in set (0.000 sec)

MariaDB [latihan_mysql]> UPDATE customers
    -> SET country = 'Jepang'
    -> WHERE id = 1;
Query OK, 1 row affected (0.010 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+--------+------------+-----------+
| id | name   | city       | country   |
+----+--------+------------+-----------+
|  1 | Gara   | Sunagakure | Jepang    |
|  2 | Manda  | Jogja      | Indonesia |
|  3 | Kaguya | Konoha     | Jepang    |
+----+--------+------------+-----------+
3 rows in set (0.000 sec)

MariaDB [latihan_mysql]>  DELETE FROM customers
    -> WHERE id = 3;
Query OK, 1 row affected (0.014 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+-------+------------+-----------+
| id | name  | city       | country   |
+----+-------+------------+-----------+
|  1 | Gara  | Sunagakure | Jepang    |
|  2 | Manda | Jogja      | Indonesia |
+----+-------+------------+-----------+
2 rows in set (0.000 sec)

MariaDB [latihan_mysql]>

