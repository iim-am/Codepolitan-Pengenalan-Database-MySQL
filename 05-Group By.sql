Microsoft Windows [Version 10.0.22000.1098]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LEGION>cd \

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql.exe -u root
ERROR 2002 (HY000): Can't connect to MySQL server on 'localhost' (10061)

C:\xampp\mysql\bin>;
C:\xampp\mysql\bin>mysql.exe -u root
ERROR 2002 (HY000): Can't connect to MySQL server on 'localhost' (10061)

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
8 rows in set (0.002 sec)

MariaDB [(none)]> USE latihan_mysql;
Database changed
MariaDB [latihan_mysql]> SHOW TABLES;
+-------------------------+
| Tables_in_latihan_mysql |
+-------------------------+
| items                   |
| orders                  |
| products                |
+-------------------------+
3 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SOURCE C:\Users\LEGION\Documents\Pengenalan Database Menggunakan MySQL\data\customers.sql
Query OK, 0 rows affected (0.038 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.016 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.006 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.006 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.007 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> LIMIT 5;
+----+-------------------+------+-------------+-----------+
| id | name              | age  | city        | country   |
+----+-------------------+------+-------------+-----------+
|  1 | Case Tainton      | 2008 | Karanganyar | Indonesia |
|  2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia    |
|  3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia |
|  4 | Rosalie Cosson    | 2000 | Chojnice    | Poland    |
|  5 | Benedetto Girling | 1973 | Pining      | Indonesia |
+----+-------------------+------+-------------+-----------+
5 rows in set (0.000 sec)

MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(50) | YES  |     | NULL    |                |
| age     | varchar(50) | YES  |     | NULL    |                |
| city    | varchar(50) | YES  |     | NULL    |                |
| country | varchar(50) | YES  |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
5 rows in set (0.022 sec)

MariaDB [latihan_mysql]> ALTER customers
    -> CHANGE COLUMN age TO burthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customers
CHANGE COLUMN age TO burthday' at line 1
MariaDB [latihan_mysql]> ALTER TABLE customers
    -> CHANGE COLUMN age TO burthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO burthday' at line 2
MariaDB [latihan_mysql]> ALTER TABLE customers
    -> RENAME COLUMN age TO birthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN age TO birthday' at line 2
MariaDB [latihan_mysql]> Bye
Ctrl-C -- exit!

C:\xampp\mysql\bin>mysql.exe -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
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
8 rows in set (0.001 sec)

MariaDB [(none)]> USE latihan_mysql;
Database changed
MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(50) | YES  |     | NULL    |                |
| age     | varchar(50) | YES  |     | NULL    |                |
| city    | varchar(50) | YES  |     | NULL    |                |
| country | varchar(50) | YES  |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
5 rows in set (0.019 sec)

MariaDB [latihan_mysql]> ALTER TABLE customers
    -> RENAME COLUMN age TO birthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN age TO birthday' at line 2
MariaDB [latihan_mysql]> ALTER TABLE customers RENAME COLUMN age TO birthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN age TO birthday' at line 1
MariaDB [latihan_mysql]> ALTER TABLE customers RENAME COLUMN age TO years;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN age TO years' at line 1
MariaDB [latihan_mysql]> ALTER TABLE customers RENAME COLUMN age TO years;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN age TO years' at line 1
MariaDB [latihan_mysql]> ALTER TABLE customers CHANGE COLUMN age TO birthday;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO birthday' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10;
+----+-------------------+------+-------------+--------------+
| id | name              | age  | city        | country      |
+----+-------------------+------+-------------+--------------+
|  1 | Case Tainton      | 2008 | Karanganyar | Indonesia    |
|  2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia       |
|  3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia    |
|  4 | Rosalie Cosson    | 2000 | Chojnice    | Poland       |
|  5 | Benedetto Girling | 1973 | Pining      | Indonesia    |
|  6 | Susann Siccombe   | 2011 | Pagak       | Indonesia    |
|  7 | Carmel Yerborn    | 1993 | Unaizah     | Saudi Arabia |
|  8 | Iago Richardeau   | 1994 | M├╝llendorf | Luxembourg   |
|  9 | Alene Thurman     | 2007 | Munjungan   | Indonesia    |
| 10 | Ashby Ovenell     | 2006 | Ketangi     | Indonesia    |
+----+-------------------+------+-------------+--------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id) FROM customers
    -> ;
+-----------+
| COUNT(id) |
+-----------+
|      1000 |
+-----------+
1 row in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id), country FROM customers
    -> GROUP BY country;
+-----------+----------------------------------------------+
| COUNT(id) | country                                      |
+-----------+----------------------------------------------+
|         4 | Afghanistan                                  |
|         5 | Albania                                      |
|        12 | Argentina                                    |
|         5 | Armenia                                      |
|         2 | Azerbaijan                                   |
|         1 | Bangladesh                                   |
|         2 | Belarus                                      |
|         1 | Bolivia                                      |
|         2 | Bosnia and Herzegovina                       |
|         1 | Botswana                                     |
|        34 | Brazil                                       |
|         7 | Bulgaria                                     |
|         1 | Burkina Faso                                 |
|         1 | Cameroon                                     |
|        12 | Canada                                       |
|         1 | Central African Republic                     |
|         1 | Chad                                         |
|         2 | Chile                                        |
|       181 | China                                        |
|        13 | Colombia                                     |
|         1 | Comoros                                      |
|         2 | Costa Rica                                   |
|         2 | Croatia                                      |
|         6 | Cuba                                         |
|         1 | Cyprus                                       |
|        18 | Czech Republic                               |
|         2 | Dominica                                     |
|         2 | Dominican Republic                           |
|         4 | Egypt                                        |
|         2 | Estonia                                      |
|         4 | Ethiopia                                     |
|         5 | Finland                                      |
|        32 | France                                       |
|         2 | French Polynesia                             |
|         2 | Georgia                                      |
|         1 | Germany                                      |
|        15 | Greece                                       |
|         5 | Guatemala                                    |
|         1 | Haiti                                        |
|         9 | Honduras                                     |
|         2 | Hungary                                      |
|         1 | Iceland                                      |
|        99 | Indonesia                                    |
|         9 | Iran                                         |
|         4 | Iraq                                         |
|         7 | Ireland                                      |
|         1 | Israel                                       |
|         2 | Ivory Coast                                  |
|         3 | Jamaica                                      |
|        17 | Japan                                        |
|         2 | Jordan                                       |
|         8 | Kazakhstan                                   |
|         3 | Kenya                                        |
|         2 | Kyrgyzstan                                   |
|         1 | Latvia                                       |
|         1 | Lebanon                                      |
|         2 | Lithuania                                    |
|         3 | Luxembourg                                   |
|         1 | Macedonia                                    |
|         3 | Madagascar                                   |
|         1 | Malawi                                       |
|         6 | Malaysia                                     |
|         2 | Mauritius                                    |
|         7 | Mexico                                       |
|         3 | Mongolia                                     |
|         6 | Morocco                                      |
|         1 | Mozambique                                   |
|         2 | Myanmar                                      |
|         3 | Namibia                                      |
|         1 | Nepal                                        |
|         4 | Netherlands                                  |
|         1 | Nicaragua                                    |
|         3 | Niger                                        |
|         8 | Nigeria                                      |
|         6 | Norway                                       |
|         1 | Oman                                         |
|         5 | Pakistan                                     |
|         1 | Palau                                        |
|         3 | Palestinian Territory                        |
|         2 | Panama                                       |
|         2 | Papua New Guinea                             |
|         3 | Paraguay                                     |
|        19 | Peru                                         |
|        48 | Philippines                                  |
|        30 | Poland                                       |
|        35 | Portugal                                     |
|        61 | Russia                                       |
|         1 | Saudi Arabia                                 |
|         1 | Senegal                                      |
|         7 | Serbia                                       |
|         1 | Sierra Leone                                 |
|         3 | Slovenia                                     |
|        10 | South Africa                                 |
|         1 | South Georgia and the South Sandwich Islands |
|         1 | South Korea                                  |
|         3 | Spain                                        |
|         2 | Sri Lanka                                    |
|         1 | Sudan                                        |
|         1 | Svalbard and Jan Mayen                       |
|         1 | Swaziland                                    |
|        26 | Sweden                                       |
|         4 | Syria                                        |
|         1 | Tajikistan                                   |
|         2 | Tanzania                                     |
|        15 | Thailand                                     |
|         1 | Togo                                         |
|         1 | Tokelau                                      |
|         1 | Turkey                                       |
|         2 | Turkmenistan                                 |
|         3 | Uganda                                       |
|        22 | Ukraine                                      |
|         1 | United Arab Emirates                         |
|        25 | United States                                |
|         1 | Uruguay                                      |
|         2 | Uzbekistan                                   |
|         3 | Venezuela                                    |
|         7 | Vietnam                                      |
|         7 | Yemen                                        |
|         3 | Zambia                                       |
|         1 | Zimbabwe                                     |
+-----------+----------------------------------------------+
120 rows in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id) AS Jumlah Customers, country FROM customers
    -> GROUB BY country;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Customers, country FROM customers
GROUB BY country' at line 1
MariaDB [latihan_mysql]> SELECT COUNT(id) AS `Jumlah Customers`, country FROM customers
    -> GROUB BY country;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'BY country' at line 2
MariaDB [latihan_mysql]> SELECT COUNT(id) AS Jumlah Customers, country FROM customers
    -> GROUP BY country;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Customers, country FROM customers
GROUP BY country' at line 1
MariaDB [latihan_mysql]> SELECT COUNT(id) AS jumlah, country FROM customers
    -> GROUP BY country;
+--------+----------------------------------------------+
| jumlah | country                                      |
+--------+----------------------------------------------+
|      4 | Afghanistan                                  |
|      5 | Albania                                      |
|     12 | Argentina                                    |
|      5 | Armenia                                      |
|      2 | Azerbaijan                                   |
|      1 | Bangladesh                                   |
|      2 | Belarus                                      |
|      1 | Bolivia                                      |
|      2 | Bosnia and Herzegovina                       |
|      1 | Botswana                                     |
|     34 | Brazil                                       |
|      7 | Bulgaria                                     |
|      1 | Burkina Faso                                 |
|      1 | Cameroon                                     |
|     12 | Canada                                       |
|      1 | Central African Republic                     |
|      1 | Chad                                         |
|      2 | Chile                                        |
|    181 | China                                        |
|     13 | Colombia                                     |
|      1 | Comoros                                      |
|      2 | Costa Rica                                   |
|      2 | Croatia                                      |
|      6 | Cuba                                         |
|      1 | Cyprus                                       |
|     18 | Czech Republic                               |
|      2 | Dominica                                     |
|      2 | Dominican Republic                           |
|      4 | Egypt                                        |
|      2 | Estonia                                      |
|      4 | Ethiopia                                     |
|      5 | Finland                                      |
|     32 | France                                       |
|      2 | French Polynesia                             |
|      2 | Georgia                                      |
|      1 | Germany                                      |
|     15 | Greece                                       |
|      5 | Guatemala                                    |
|      1 | Haiti                                        |
|      9 | Honduras                                     |
|      2 | Hungary                                      |
|      1 | Iceland                                      |
|     99 | Indonesia                                    |
|      9 | Iran                                         |
|      4 | Iraq                                         |
|      7 | Ireland                                      |
|      1 | Israel                                       |
|      2 | Ivory Coast                                  |
|      3 | Jamaica                                      |
|     17 | Japan                                        |
|      2 | Jordan                                       |
|      8 | Kazakhstan                                   |
|      3 | Kenya                                        |
|      2 | Kyrgyzstan                                   |
|      1 | Latvia                                       |
|      1 | Lebanon                                      |
|      2 | Lithuania                                    |
|      3 | Luxembourg                                   |
|      1 | Macedonia                                    |
|      3 | Madagascar                                   |
|      1 | Malawi                                       |
|      6 | Malaysia                                     |
|      2 | Mauritius                                    |
|      7 | Mexico                                       |
|      3 | Mongolia                                     |
|      6 | Morocco                                      |
|      1 | Mozambique                                   |
|      2 | Myanmar                                      |
|      3 | Namibia                                      |
|      1 | Nepal                                        |
|      4 | Netherlands                                  |
|      1 | Nicaragua                                    |
|      3 | Niger                                        |
|      8 | Nigeria                                      |
|      6 | Norway                                       |
|      1 | Oman                                         |
|      5 | Pakistan                                     |
|      1 | Palau                                        |
|      3 | Palestinian Territory                        |
|      2 | Panama                                       |
|      2 | Papua New Guinea                             |
|      3 | Paraguay                                     |
|     19 | Peru                                         |
|     48 | Philippines                                  |
|     30 | Poland                                       |
|     35 | Portugal                                     |
|     61 | Russia                                       |
|      1 | Saudi Arabia                                 |
|      1 | Senegal                                      |
|      7 | Serbia                                       |
|      1 | Sierra Leone                                 |
|      3 | Slovenia                                     |
|     10 | South Africa                                 |
|      1 | South Georgia and the South Sandwich Islands |
|      1 | South Korea                                  |
|      3 | Spain                                        |
|      2 | Sri Lanka                                    |
|      1 | Sudan                                        |
|      1 | Svalbard and Jan Mayen                       |
|      1 | Swaziland                                    |
|     26 | Sweden                                       |
|      4 | Syria                                        |
|      1 | Tajikistan                                   |
|      2 | Tanzania                                     |
|     15 | Thailand                                     |
|      1 | Togo                                         |
|      1 | Tokelau                                      |
|      1 | Turkey                                       |
|      2 | Turkmenistan                                 |
|      3 | Uganda                                       |
|     22 | Ukraine                                      |
|      1 | United Arab Emirates                         |
|     25 | United States                                |
|      1 | Uruguay                                      |
|      2 | Uzbekistan                                   |
|      3 | Venezuela                                    |
|      7 | Vietnam                                      |
|      7 | Yemen                                        |
|      3 | Zambia                                       |
|      1 | Zimbabwe                                     |
+--------+----------------------------------------------+
120 rows in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id) AS Birthday, country FROM customers
    -> ;
+----------+-----------+
| Birthday | country   |
+----------+-----------+
|     1000 | Indonesia |
+----------+-----------+
1 row in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id) AS Birthday, age, name FROM customers
    -> GROUP BY age;
+----------+------+---------------------+
| Birthday | age  | name                |
+----------+------+---------------------+
|        1 | 1950 | Trip Ferrarotti     |
|        1 | 1962 | Gabbi Wyldbore      |
|        1 | 1963 | Spencer Friedank    |
|        1 | 1964 | Devin Aspden        |
|        2 | 1965 | Marlo Measham       |
|        4 | 1966 | Ewell Sawden        |
|        2 | 1967 | Waylon Hassall      |
|        1 | 1968 | Rori Benbough       |
|        2 | 1969 | Guthrey Tarbett     |
|        2 | 1970 | Roxi Woodyer        |
|        1 | 1971 | Daniel Manwell      |
|        4 | 1973 | Benedetto Girling   |
|        1 | 1978 | Vale Geratasch      |
|        1 | 1981 | Delcine Dowbekin    |
|        1 | 1982 | Annalee Nealey      |
|        3 | 1983 | Clem Cowland        |
|       13 | 1984 | Drew Challace       |
|       11 | 1985 | Tabor Costigan      |
|       16 | 1986 | Crichton Kinman     |
|       11 | 1987 | Hew Dewicke         |
|       10 | 1988 | Vernen Mathou       |
|       22 | 1989 | Kathie Pullan       |
|       14 | 1990 | Simonette Delcastel |
|       11 | 1991 | Kristofer Bardwell  |
|       41 | 1992 | Binky Boater        |
|       39 | 1993 | Carmel Yerborn      |
|       39 | 1994 | Iago Richardeau     |
|       37 | 1995 | Tally Arzu          |
|       32 | 1996 | Thurston Crannis    |
|       28 | 1997 | Valeria Pagan       |
|       36 | 1998 | Lizbeth Watterson   |
|       35 | 1999 | Thia Perrins        |
|       30 | 2000 | Rosalie Cosson      |
|       30 | 2001 | Janey Gelsthorpe    |
|       31 | 2002 | Alphonso Kunzel     |
|       38 | 2003 | Lonni McCaw         |
|       48 | 2004 | Dorisa Guille       |
|       49 | 2005 | Nananne Gilford     |
|       52 | 2006 | Ashby Ovenell       |
|       48 | 2007 | Pierre Chelnam      |
|       55 | 2008 | Case Tainton        |
|       68 | 2009 | Mellisent Elcoate   |
|       40 | 2010 | Roselia Arnold      |
|       51 | 2011 | Susann Siccombe     |
|       33 | 2012 | Hendrika Harbert    |
|        4 | 2013 | Roldan Nesterov     |
+----------+------+---------------------+
46 rows in set (0.001 sec)

MariaDB [latihan_mysql]>