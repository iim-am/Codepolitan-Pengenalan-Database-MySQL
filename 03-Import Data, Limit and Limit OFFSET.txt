Microsoft Windows [Version 10.0.22000.1098]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LEGION>cd\

C:\>cd xampp;
The system cannot find the path specified.

C:\>cd mysql;
The system cannot find the path specified.

C:\>cd mysql
The system cannot find the path specified.

C:\>dir
 Volume in drive C is Windows-SSD
 Volume Serial Number is CE5B-368F

 Directory of C:\

09/11/2020  01:09 PM    <DIR>          dev
01/11/2020  03:24 PM    <DIR>          DRIVER
06/05/2021  12:29 AM    <DIR>          Drivers
11/04/2020  04:26 PM    <DIR>          Go
10/02/2020  03:40 PM    <DIR>          Gradle
11/02/2022  02:32 PM    <DIR>          KMPlayer
05/21/2022  06:46 PM    <DIR>          Microsoft
06/05/2021  07:10 PM    <DIR>          PerfLogs
08/16/2022  10:26 AM    <DIR>          Program Files
11/05/2022  02:04 PM    <DIR>          Program Files (x86)
10/15/2021  07:21 PM             2,120 Setup.log
07/23/2022  02:49 PM    <DIR>          Users
10/16/2022  11:11 AM    <DIR>          Windows
10/16/2022  10:01 PM    <DIR>          xampp
               1 File(s)          2,120 bytes
              13 Dir(s)  112,060,424,192 bytes free

C:\>cd xampp

C:\xampp>dir
 Volume in drive C is Windows-SSD
 Volume Serial Number is CE5B-368F

 Directory of C:\xampp

10/16/2022  10:01 PM    <DIR>          .
10/16/2022  09:56 PM    <DIR>          anonymous
10/16/2022  09:56 PM    <DIR>          apache
06/07/2013  06:15 PM               436 apache_start.bat
10/01/2019  02:13 PM               190 apache_stop.bat
04/05/2021  11:16 PM            10,324 catalina_service.bat
04/05/2021  11:17 PM             3,766 catalina_start.bat
04/05/2021  11:17 PM             3,529 catalina_stop.bat
10/16/2022  10:00 PM    <DIR>          cgi-bin
10/16/2022  09:56 PM    <DIR>          contrib
10/16/2022  09:56 PM             2,731 ctlscript.bat
03/30/2013  07:29 PM                78 filezilla_setup.bat
06/07/2013  06:15 PM               150 filezilla_start.bat
06/07/2013  06:15 PM               149 filezilla_stop.bat
10/16/2022  09:56 PM    <DIR>          htdocs
10/16/2022  09:56 PM    <DIR>          img
10/16/2022  10:00 PM    <DIR>          install
06/15/2022  11:07 PM               299 killprocess.bat
10/16/2022  09:56 PM    <DIR>          licenses
10/16/2022  09:56 PM    <DIR>          locale
10/16/2022  09:56 PM    <DIR>          mailoutput
10/16/2022  09:56 PM    <DIR>          mailtodisk
06/07/2013  06:15 PM               136 mercury_start.bat
06/07/2013  06:15 PM                60 mercury_stop.bat
10/20/2022  11:27 AM    <DIR>          mysql
06/03/2019  06:39 PM               471 mysql_start.bat
10/01/2019  02:13 PM               270 mysql_stop.bat
03/13/2017  06:04 PM               824 passwords.txt
10/16/2022  10:00 PM    <DIR>          php
10/16/2022  10:42 PM    <DIR>          phpMyAdmin
10/16/2022  09:59 PM               792 properties.ini
10/01/2022  01:54 PM             7,705 readme_de.txt
10/01/2022  01:54 PM             7,575 readme_en.txt
03/30/2013  07:29 PM            60,928 service.exe
03/30/2013  07:29 PM             1,255 setup_xampp.bat
10/16/2022  09:56 PM    <DIR>          src
06/14/2022  01:24 PM             1,671 test_php.bat
11/05/2022  05:23 PM    <DIR>          tmp
10/16/2022  10:01 PM           170,122 uninstall.dat
10/16/2022  10:01 PM         6,595,172 uninstall.exe
10/16/2022  09:56 PM    <DIR>          webdav
04/06/2021  06:38 PM         3,368,448 xampp-control.exe
10/16/2022  10:00 PM               173 xampp-control.ini
10/16/2022  09:56 PM             1,084 xampp_shell.bat
03/30/2013  07:29 PM           118,784 xampp_start.exe
03/30/2013  07:29 PM           118,784 xampp_stop.exe
              28 File(s)     10,475,906 bytes
              18 Dir(s)  112,060,489,728 bytes free

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
8 rows in set (0.016 sec)

MariaDB [(none)]> USE latihan_mysql;
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

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+-------+------------+-----------+
| id | name  | city       | country   |
+----+-------+------------+-----------+
|  1 | Gara  | Sunagakure | Jepang    |
|  2 | Manda | Jogja      | Indonesia |
+----+-------+------------+-----------+
2 rows in set (0.015 sec)

MariaDB [latihan_mysql]> DELETE FROM customers
    -> WHERE id = 1 AND id = 2;
Query OK, 0 rows affected (0.013 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+-------+------------+-----------+
| id | name  | city       | country   |
+----+-------+------------+-----------+
|  1 | Gara  | Sunagakure | Jepang    |
|  2 | Manda | Jogja      | Indonesia |
+----+-------+------------+-----------+
2 rows in set (0.000 sec)

MariaDB [latihan_mysql]> DELETE FROM customers
    -> WHERE id = 1;
Query OK, 1 row affected (0.011 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
+----+-------+-------+-----------+
| id | name  | city  | country   |
+----+-------+-------+-----------+
|  2 | Manda | Jogja | Indonesia |
+----+-------+-------+-----------+
1 row in set (0.000 sec)

MariaDB [latihan_mysql]> DELETE customers
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [latihan_mysql]> DELETE FROM customers
    -> WHERE id=2;
Query OK, 1 row affected (0.011 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
Empty set (0.000 sec)

MariaDB [latihan_mysql]> SET FOREIGN_KEY_CHECK=0;
ERROR 1193 (HY000): Unknown system variable 'FOREIGN_KEY_CHECK'
MariaDB [latihan_mysql]> SET FOREIGN_KEY_CHECKS=0;
Query OK, 0 rows affected (0.000 sec)

MariaDB [latihan_mysql]> TRUNCATE TABLE customers;
Query OK, 0 rows affected (0.041 sec)

MariaDB [latihan_mysql]> SET FOREIGN_KEY_CHECKS= 1;
Query OK, 0 rows affected (0.000 sec)

MariaDB [latihan_mysql]> SOURCE "C:\Users\LEGION\Documents\Pengenalan Database Menggunakan MySQL\data\customers.sql"
ERROR: Failed to open file '"C:\Users\LEGION\Documents\Pengenalan Database Menggunakan MySQL\data\customers.sql"', error: 13
MariaDB [latihan_mysql]> source C:\Users\LEGION\Documents\Pengenalan Database Menggunakan MySQL\data\customers.sql
Query OK, 1 row affected (0.012 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

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

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.003 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

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

Query OK, 1 row affected (0.012 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.002 sec)

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

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.007 sec)

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

Query OK, 1 row affected (0.004 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

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

Query OK, 1 row affected (0.006 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

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

Query OK, 1 row affected (0.014 sec)

Query OK, 1 row affected (0.003 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.001 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.004 sec)

Query OK, 1 row affected (0.002 sec)

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

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.006 sec)

Query OK, 1 row affected (0.006 sec)

Query OK, 1 row affected (0.006 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.016 sec)

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

Query OK, 1 row affected (0.004 sec)

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

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.006 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.005 sec)

Query OK, 1 row affected (0.005 sec)

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

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.002 sec)

Query OK, 1 row affected (0.016 sec)

Query OK, 1 row affected (0.002 sec)

MariaDB [latihan_mysql]> SELECT COUNT(id)
    -> FROM customers;
+-----------+
| COUNT(id) |
+-----------+
|      1000 |
+-----------+
1 row in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> LIMIT 10;
+----+------------------+----------------+----------------+
| id | name             | city           | country        |
+----+------------------+----------------+----------------+
|  1 | Winnie Seaman    | Riebi┼åi       | Latvia         |
|  2 | Brucie Oland     | Pet┼Övald      | Czech Republic |
|  3 | Joyann Hackley   | Ortigueira     | Brazil         |
|  4 | Corly Wybrew     | Jamund├¡       | Colombia       |
|  5 | Latrena Mighele  | Zhujiang       | China          |
|  6 | Luciano Ferronel | Mzuzu          | Malawi         |
|  7 | Raimundo Schaben | Tarusa         | Russia         |
|  8 | Tammie Pettiford | Nueve de Julio | Argentina      |
|  9 | Allys Cubbon     | Ba┼ét├│w       | Poland         |
| 10 | Zedekiah Syrett  | Villa Gesell   | Argentina      |
+----+------------------+----------------+----------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10 OFFSITE 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OFFSITE 10' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10 OFFSIT 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OFFSIT 10' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10 OFFSET 10;
+----+--------------------+--------------+----------------+
| id | name               | city         | country        |
+----+--------------------+--------------+----------------+
| 11 | Scotty Giorgiutti  | M─¢ln├¡k     | Czech Republic |
| 12 | Kellsie Gawke      | Taurage      | Lithuania      |
| 13 | Holly Rockell      | Khv─üns─ür   | Iran           |
| 14 | Christiana Barnson | Potok Z┼éoty | Poland         |
| 15 | Liana Kerins       | Rolante      | Brazil         |
| 16 | Cecilla Ffrench    | Mudanjiang   | China          |
| 17 | Stephanie Winsome  | Jargalant    | Mongolia       |
| 18 | Martin Ridder      | Lanas        | Philippines    |
| 19 | Courtney Malitrott | Wolbrom      | Poland         |
| 20 | Starla Stickells   | Santa Paz    | Philippines    |
+----+--------------------+--------------+----------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT (10,10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(10,10)' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10 OFFSET 10;
+----+--------------------+--------------+----------------+
| id | name               | city         | country        |
+----+--------------------+--------------+----------------+
| 11 | Scotty Giorgiutti  | M─¢ln├¡k     | Czech Republic |
| 12 | Kellsie Gawke      | Taurage      | Lithuania      |
| 13 | Holly Rockell      | Khv─üns─ür   | Iran           |
| 14 | Christiana Barnson | Potok Z┼éoty | Poland         |
| 15 | Liana Kerins       | Rolante      | Brazil         |
| 16 | Cecilla Ffrench    | Mudanjiang   | China          |
| 17 | Stephanie Winsome  | Jargalant    | Mongolia       |
| 18 | Martin Ridder      | Lanas        | Philippines    |
| 19 | Courtney Malitrott | Wolbrom      | Poland         |
| 20 | Starla Stickells   | Santa Paz    | Philippines    |
+----+--------------------+--------------+----------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 10 OFFSET 20;
+----+-----------------+------------------+-------------+
| id | name            | city             | country     |
+----+-----------------+------------------+-------------+
| 21 | Demetri Bert    | Lob├úo           | Portugal    |
| 22 | Efren Quantick  | Sumilao          | Philippines |
| 23 | Sisely Anwell   | Ukhta            | Russia      |
| 24 | Elvin Edmundson | Shakhty          | Russia      |
| 25 | Brett Boissier  | Al MaΓÇÿall─üΓÇÖ | Yemen       |
| 26 | Locke Latchford | Dushi            | China       |
| 27 | Mina Acuna      | Uchiza           | Peru        |
| 28 | Martin Culvey   | S├úo Jer├┤nimo   | Brazil      |
| 29 | Der Gillbanks   | Jonava           | Lithuania   |
| 30 | Flin Fardo      | Daeosin Satu     | Indonesia   |
+----+-----------------+------------------+-------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers LIMIT 5 OFFSET 20;
+----+-----------------+------------------+-------------+
| id | name            | city             | country     |
+----+-----------------+------------------+-------------+
| 21 | Demetri Bert    | Lob├úo           | Portugal    |
| 22 | Efren Quantick  | Sumilao          | Philippines |
| 23 | Sisely Anwell   | Ukhta            | Russia      |
| 24 | Elvin Edmundson | Shakhty          | Russia      |
| 25 | Brett Boissier  | Al MaΓÇÿall─üΓÇÖ | Yemen       |
+----+-----------------+------------------+-------------+
5 rows in set (0.000 sec)

MariaDB [latihan_mysql]>