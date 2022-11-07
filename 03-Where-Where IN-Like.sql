
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
MariaDB [latihan_mysql]> SELECT FROM customers
    -> WHERE country = 'Indonesia';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM customers
WHERE country = 'Indonesia'' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE country = 'Indonesia';
+------+---------------------+------------------------------+-----------+
| id   | name                | city                         | country   |
+------+---------------------+------------------------------+-----------+
|   30 | Flin Fardo          | Daeosin Satu                 | Indonesia |
|   32 | Brietta Winskill    | Ciampea                      | Indonesia |
|   53 | Carolyne Sandells   | Bajera                       | Indonesia |
|   72 | Livvyy Drinkwater   | Ciakar                       | Indonesia |
|   82 | Cash Heersma        | Saparua                      | Indonesia |
|   89 | Dion Rummins        | Leles                        | Indonesia |
|   90 | Fairfax Ficken      | Jangkat                      | Indonesia |
|  115 | Idaline Croster     | Panoongan                    | Indonesia |
|  132 | Micah Clitheroe     | Cibatu                       | Indonesia |
|  152 | Candi Loadman       | Pancoran                     | Indonesia |
|  154 | Dorine Kyles        | Dungkek Laok                 | Indonesia |
|  155 | Doti Williams       | Batusangkar                  | Indonesia |
|  160 | Suki Ringsell       | Lailunggi                    | Indonesia |
|  164 | Karna Cashford      | Gayamsari                    | Indonesia |
|  172 | Maribeth Bannon     | Secang Barat                 | Indonesia |
|  178 | Hube Passfield      | Warungtanjung                | Indonesia |
|  179 | Rosanne Murt        | Pancalan                     | Indonesia |
|  181 | Goraud Shenfish     | Winong                       | Indonesia |
|  182 | Frankie Tolworthy   | Sukakerta                    | Indonesia |
|  184 | Gasper Sercombe     | Sukacai Tengah               | Indonesia |
|  200 | Jordana Seefeldt    | Kroya                        | Indonesia |
|  210 | Rosana Barnson      | Ngrejo                       | Indonesia |
|  213 | Lorianne Snazle     | Nangabere                    | Indonesia |
|  218 | Gaspard Rathbourne  | Sindanghayu                  | Indonesia |
|  223 | Dimitri Middleweek  | Cisewu                       | Indonesia |
|  244 | Briant Wethered     | Mliwang                      | Indonesia |
|  246 | Tito Franciskiewicz | Dengok                       | Indonesia |
|  253 | Chris Warmington    | Cikayas                      | Indonesia |
|  254 | Bing Francecione    | Sabang                       | Indonesia |
|  256 | Rudie Stritton      | Pejukutan                    | Indonesia |
|  257 | Dorette Oldacres    | Jami                         | Indonesia |
|  261 | Kasey Osgorby       | Rantaupanjangkiri            | Indonesia |
|  286 | Leanora Elloit      | Asemanis                     | Indonesia |
|  290 | Isaak Sirrell       | Banjar Banyualit             | Indonesia |
|  307 | Bobby Fillary       | Sidomulyo Kulon              | Indonesia |
|  323 | Wain Hirsthouse     | Cikadondongdesa              | Indonesia |
|  329 | Shani Guilaem       | Jadho                        | Indonesia |
|  337 | Milzie Borsay       | Suci Kaler                   | Indonesia |
|  338 | Raviv Cay           | Krajan Suko Kidul            | Indonesia |
|  347 | Dreddy Schroder     | Karangpaningal               | Indonesia |
|  348 | Audre Lingner       | Kendung Timur                | Indonesia |
|  360 | Codi Stenning       | Sumberdadi                   | Indonesia |
|  376 | Emelia McIlenna     | Mojosari                     | Indonesia |
|  380 | Kennan Boij         | Butungan                     | Indonesia |
|  381 | Wilfrid Spurrett    | Bamban                       | Indonesia |
|  417 | Johannah Penney     | Tebon                        | Indonesia |
|  420 | Niki Bluck          | Karangasem                   | Indonesia |
|  423 | Calla Pauli         | Singgit                      | Indonesia |
|  443 | Darrelle Brideau    | Mayong                       | Indonesia |
|  444 | Trixi Storrar       | Panoongan                    | Indonesia |
|  462 | Brina Venable       | Cilolongokan                 | Indonesia |
|  479 | Sergei Lilly        | Pandangan Kulon              | Indonesia |
|  484 | Marcellina Bussetti | Jatisari                     | Indonesia |
|  489 | Claybourne Speake   | Banjar Pangkungtibah Selatan | Indonesia |
|  504 | Helene Basten       | Oepula                       | Indonesia |
|  505 | Rubia O'Gready      | Prupuh                       | Indonesia |
|  518 | Tiebold Kinghorn    | Kekeran                      | Indonesia |
|  524 | Dunn Godart         | Ngawi                        | Indonesia |
|  542 | Ivan Glendining     | Bangil                       | Indonesia |
|  543 | Dewitt Servante     | Jami                         | Indonesia |
|  552 | Kendricks Wakefield | Sinarharapan                 | Indonesia |
|  589 | Lowe Eilhart        | Waiwejak                     | Indonesia |
|  593 | Reilly Malatalant   | Suka Makmue                  | Indonesia |
|  595 | Sherill Beecraft    | Long Loreh                   | Indonesia |
|  600 | Brok Copyn          | Lewolen                      | Indonesia |
|  602 | Luelle Vasyunichev  | Sumurwaru                    | Indonesia |
|  636 | Rancell Litt        | Bulakan                      | Indonesia |
|  641 | Terza Aldous        | Ngadri                       | Indonesia |
|  646 | Max Sibson          | Purut                        | Indonesia |
|  653 | Callida Putman      | Salakuray                    | Indonesia |
|  673 | Abagail Prewett     | Dangbigih                    | Indonesia |
|  688 | Clerc Beeble        | Jorong                       | Indonesia |
|  696 | Laird Laxen         | Parabon                      | Indonesia |
|  745 | Koenraad Agerskow   | Merdeka                      | Indonesia |
|  748 | Will Cringle        | Rangmanten                   | Indonesia |
|  763 | Delmor Gilbard      | Banjar Kawan                 | Indonesia |
|  770 | Alric Chate         | Cigintung                    | Indonesia |
|  777 | Lauralee Zealander  | Awilega                      | Indonesia |
|  805 | Therine Demelt      | Kaduheuleut                  | Indonesia |
|  822 | Aveline Comford     | Pasirnangka                  | Indonesia |
|  823 | Giffie Kropp        | Krajan Baru                  | Indonesia |
|  825 | Laurice Gilhespy    | Nagrog                       | Indonesia |
|  833 | Caddric Skacel      | Sebasang                     | Indonesia |
|  840 | Caz Coomer          | Bungkal                      | Indonesia |
|  852 | Zorine Pauletto     | Tengah                       | Indonesia |
|  868 | Rosana Hansford     | Campraksanta                 | Indonesia |
|  872 | Una Tidbold         | Depok                        | Indonesia |
|  878 | Pegeen Mintoff      | Tagog                        | Indonesia |
|  882 | Joellen Schiersch   | Laka                         | Indonesia |
|  886 | Valencia Berisford  | Fukadale                     | Indonesia |
|  889 | Edmon Pagett        | Kadubera                     | Indonesia |
|  890 | Demetrius Kiehnlt   | Kalumpang                    | Indonesia |
|  894 | Naomi Quincee       | Mentoro Wetan                | Indonesia |
|  898 | Leelah Irlam        | Jambuwerkrajan               | Indonesia |
|  901 | Desdemona Bedham    | Rancapeundey                 | Indonesia |
|  923 | Susy Tidcomb        | Andongrejo                   | Indonesia |
|  933 | Allison Wickes      | Pulaupanggung                | Indonesia |
|  934 | Chane Levett        | Parang                       | Indonesia |
|  939 | Cristine Crevagh    | Pasirmukti                   | Indonesia |
|  956 | Ruthanne Stannah    | Saparua                      | Indonesia |
|  959 | Bernarr Pilling     | Ngembo                       | Indonesia |
|  967 | Saree Edmondson     | Salinggara                   | Indonesia |
|  970 | Harp Kauscher       | Kertahayu                    | Indonesia |
|  982 | Faythe Goghin       | Terong                       | Indonesia |
|  995 | Emyle Ablott        | Rato                         | Indonesia |
| 1000 | Malynda Thombleson  | Kampungraja                  | Indonesia |
+------+---------------------+------------------------------+-----------+
106 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT *FROM customers
    -> WHERE id <5;
+----+----------------+------------+----------------+
| id | name           | city       | country        |
+----+----------------+------------+----------------+
|  1 | Winnie Seaman  | Riebi┼åi   | Latvia         |
|  2 | Brucie Oland   | Pet┼Övald  | Czech Republic |
|  3 | Joyann Hackley | Ortigueira | Brazil         |
|  4 | Corly Wybrew   | Jamund├¡   | Colombia       |
+----+----------------+------------+----------------+
4 rows in set (0.008 sec)

MariaDB [latihan_mysql]> SELECT *FROM customers
    -> WHERE id = 5;
+----+-----------------+----------+---------+
| id | name            | city     | country |
+----+-----------------+----------+---------+
|  5 | Latrena Mighele | Zhujiang | China   |
+----+-----------------+----------+---------+
1 row in set (0.009 sec)

MariaDB [latihan_mysql]> SELECT *FROM customers
    -> WHERE id <= 5;
+----+-----------------+------------+----------------+
| id | name            | city       | country        |
+----+-----------------+------------+----------------+
|  1 | Winnie Seaman   | Riebi┼åi   | Latvia         |
|  2 | Brucie Oland    | Pet┼Övald  | Czech Republic |
|  3 | Joyann Hackley  | Ortigueira | Brazil         |
|  4 | Corly Wybrew    | Jamund├¡   | Colombia       |
|  5 | Latrena Mighele | Zhujiang   | China          |
+----+-----------------+------------+----------------+
5 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE coutry != 'Indonesia'
    -> LIMIT 10;
ERROR 1054 (42S22): Unknown column 'coutry' in 'where clause'
MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE country != 'Indonesia'
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

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE country IN ('Indonesia','Russia','German');
+------+----------------------+------------------------------+-----------+
| id   | name                 | city                         | country   |
+------+----------------------+------------------------------+-----------+
|    7 | Raimundo Schaben     | Tarusa                       | Russia    |
|   23 | Sisely Anwell        | Ukhta                        | Russia    |
|   24 | Elvin Edmundson      | Shakhty                      | Russia    |
|   30 | Flin Fardo           | Daeosin Satu                 | Indonesia |
|   32 | Brietta Winskill     | Ciampea                      | Indonesia |
|   36 | Rhodie Meigh         | ShalΓÇÖskiy                  | Russia    |
|   38 | Chrisy Royson        | Khvatovka                    | Russia    |
|   45 | Cross Newlands       | Uchaly                       | Russia    |
|   47 | Emalee Brixham       | Nevinnomyssk                 | Russia    |
|   53 | Carolyne Sandells    | Bajera                       | Indonesia |
|   59 | Ruttger Stannett     | Tanzybey                     | Russia    |
|   72 | Livvyy Drinkwater    | Ciakar                       | Indonesia |
|   82 | Cash Heersma         | Saparua                      | Indonesia |
|   89 | Dion Rummins         | Leles                        | Indonesia |
|   90 | Fairfax Ficken       | Jangkat                      | Indonesia |
|   92 | Peta Hargerie        | Talitsa                      | Russia    |
|  106 | Jedd Dodwell         | Staraya Derevnya             | Russia    |
|  114 | Bastian Fildes       | Krasnokamensk                | Russia    |
|  115 | Idaline Croster      | Panoongan                    | Indonesia |
|  132 | Micah Clitheroe      | Cibatu                       | Indonesia |
|  136 | Eadith De Coursey    | Naberezhnyye Chelny          | Russia    |
|  146 | Georges Lebang       | Kholmsk                      | Russia    |
|  150 | Ashia Verni          | Temirgoyevskaya              | Russia    |
|  152 | Candi Loadman        | Pancoran                     | Indonesia |
|  154 | Dorine Kyles         | Dungkek Laok                 | Indonesia |
|  155 | Doti Williams        | Batusangkar                  | Indonesia |
|  160 | Suki Ringsell        | Lailunggi                    | Indonesia |
|  164 | Karna Cashford       | Gayamsari                    | Indonesia |
|  172 | Maribeth Bannon      | Secang Barat                 | Indonesia |
|  178 | Hube Passfield       | Warungtanjung                | Indonesia |
|  179 | Rosanne Murt         | Pancalan                     | Indonesia |
|  181 | Goraud Shenfish      | Winong                       | Indonesia |
|  182 | Frankie Tolworthy    | Sukakerta                    | Indonesia |
|  184 | Gasper Sercombe      | Sukacai Tengah               | Indonesia |
|  192 | Ora Terrett          | Yakovlevo                    | Russia    |
|  199 | Gerianna Hackleton   | AltufΓÇÖyevskiy              | Russia    |
|  200 | Jordana Seefeldt     | Kroya                        | Indonesia |
|  210 | Rosana Barnson       | Ngrejo                       | Indonesia |
|  213 | Lorianne Snazle      | Nangabere                    | Indonesia |
|  218 | Gaspard Rathbourne   | Sindanghayu                  | Indonesia |
|  223 | Dimitri Middleweek   | Cisewu                       | Indonesia |
|  233 | Haskell Merigon      | Donskoye                     | Russia    |
|  244 | Briant Wethered      | Mliwang                      | Indonesia |
|  246 | Tito Franciskiewicz  | Dengok                       | Indonesia |
|  253 | Chris Warmington     | Cikayas                      | Indonesia |
|  254 | Bing Francecione     | Sabang                       | Indonesia |
|  256 | Rudie Stritton       | Pejukutan                    | Indonesia |
|  257 | Dorette Oldacres     | Jami                         | Indonesia |
|  261 | Kasey Osgorby        | Rantaupanjangkiri            | Indonesia |
|  279 | Bria Gwillym         | Krasnogvardeyets             | Russia    |
|  286 | Leanora Elloit       | Asemanis                     | Indonesia |
|  290 | Isaak Sirrell        | Banjar Banyualit             | Indonesia |
|  304 | Gale Lanmeid         | Pravdinsk                    | Russia    |
|  307 | Bobby Fillary        | Sidomulyo Kulon              | Indonesia |
|  311 | Arlen Spadari        | Uglyanets                    | Russia    |
|  323 | Wain Hirsthouse      | Cikadondongdesa              | Indonesia |
|  329 | Shani Guilaem        | Jadho                        | Indonesia |
|  337 | Milzie Borsay        | Suci Kaler                   | Indonesia |
|  338 | Raviv Cay            | Krajan Suko Kidul            | Indonesia |
|  347 | Dreddy Schroder      | Karangpaningal               | Indonesia |
|  348 | Audre Lingner        | Kendung Timur                | Indonesia |
|  351 | Alleen Meininger     | Kangalassy                   | Russia    |
|  360 | Codi Stenning        | Sumberdadi                   | Indonesia |
|  364 | Susanne Klassman     | Beloye                       | Russia    |
|  374 | Norbert Close        | Tula                         | Russia    |
|  376 | Emelia McIlenna      | Mojosari                     | Indonesia |
|  380 | Kennan Boij          | Butungan                     | Indonesia |
|  381 | Wilfrid Spurrett     | Bamban                       | Indonesia |
|  417 | Johannah Penney      | Tebon                        | Indonesia |
|  420 | Niki Bluck           | Karangasem                   | Indonesia |
|  423 | Calla Pauli          | Singgit                      | Indonesia |
|  443 | Darrelle Brideau     | Mayong                       | Indonesia |
|  444 | Trixi Storrar        | Panoongan                    | Indonesia |
|  461 | Peyton Wadwell       | Petrovo-DalΓÇÖneye           | Russia    |
|  462 | Brina Venable        | Cilolongokan                 | Indonesia |
|  479 | Sergei Lilly         | Pandangan Kulon              | Indonesia |
|  484 | Marcellina Bussetti  | Jatisari                     | Indonesia |
|  488 | Aleksandr Vaun       | Priargunsk                   | Russia    |
|  489 | Claybourne Speake    | Banjar Pangkungtibah Selatan | Indonesia |
|  492 | Eldon Stokey         | Furmanov                     | Russia    |
|  504 | Helene Basten        | Oepula                       | Indonesia |
|  505 | Rubia O'Gready       | Prupuh                       | Indonesia |
|  510 | Cleon Orcott         | Businovo                     | Russia    |
|  516 | Melantha Vanacci     | Yegorlykskaya                | Russia    |
|  518 | Tiebold Kinghorn     | Kekeran                      | Indonesia |
|  524 | Dunn Godart          | Ngawi                        | Indonesia |
|  532 | Jesse Goulbourn      | Gremyachinsk                 | Russia    |
|  542 | Ivan Glendining      | Bangil                       | Indonesia |
|  543 | Dewitt Servante      | Jami                         | Indonesia |
|  552 | Kendricks Wakefield  | Sinarharapan                 | Indonesia |
|  555 | Karylin Piatkowski   | Pravda                       | Russia    |
|  589 | Lowe Eilhart         | Waiwejak                     | Indonesia |
|  593 | Reilly Malatalant    | Suka Makmue                  | Indonesia |
|  595 | Sherill Beecraft     | Long Loreh                   | Indonesia |
|  600 | Brok Copyn           | Lewolen                      | Indonesia |
|  602 | Luelle Vasyunichev   | Sumurwaru                    | Indonesia |
|  636 | Rancell Litt         | Bulakan                      | Indonesia |
|  641 | Terza Aldous         | Ngadri                       | Indonesia |
|  646 | Max Sibson           | Purut                        | Indonesia |
|  653 | Callida Putman       | Salakuray                    | Indonesia |
|  673 | Abagail Prewett      | Dangbigih                    | Indonesia |
|  688 | Clerc Beeble         | Jorong                       | Indonesia |
|  691 | Tybalt Fleetham      | Razumnoye                    | Russia    |
|  694 | Chrissie Danovich    | SolΓÇÖtsy                    | Russia    |
|  695 | Van Collen           | Rostov                       | Russia    |
|  696 | Laird Laxen          | Parabon                      | Indonesia |
|  721 | Trudie Gonzalez      | Zheshart                     | Russia    |
|  726 | Gib Hamfleet         | Starodub                     | Russia    |
|  732 | Octavius Gowdy       | Gornorechenskiy              | Russia    |
|  734 | Sylvia Bisacre       | Pokrovskoye-Streshn├½vo      | Russia    |
|  736 | Rosemaria Manvelle   | Nagornyy                     | Russia    |
|  745 | Koenraad Agerskow    | Merdeka                      | Indonesia |
|  748 | Will Cringle         | Rangmanten                   | Indonesia |
|  753 | Sosanna Jurkowski    | YantalΓÇÖ                    | Russia    |
|  763 | Delmor Gilbard       | Banjar Kawan                 | Indonesia |
|  770 | Alric Chate          | Cigintung                    | Indonesia |
|  777 | Lauralee Zealander   | Awilega                      | Indonesia |
|  778 | Arv Kornalik         | Karasuk                      | Russia    |
|  805 | Therine Demelt       | Kaduheuleut                  | Indonesia |
|  813 | Luther McCloid       | Dzhayrakh                    | Russia    |
|  814 | Sadye Smelley        | Prokhladnyy                  | Russia    |
|  822 | Aveline Comford      | Pasirnangka                  | Indonesia |
|  823 | Giffie Kropp         | Krajan Baru                  | Indonesia |
|  825 | Laurice Gilhespy     | Nagrog                       | Indonesia |
|  830 | Davidde Gabrieli     | Novodvinsk                   | Russia    |
|  833 | Caddric Skacel       | Sebasang                     | Indonesia |
|  840 | Caz Coomer           | Bungkal                      | Indonesia |
|  852 | Zorine Pauletto      | Tengah                       | Indonesia |
|  853 | Desiri Haylands      | Petrovskaya                  | Russia    |
|  856 | Luce Coenraets       | Sukhinichi                   | Russia    |
|  868 | Rosana Hansford      | Campraksanta                 | Indonesia |
|  872 | Una Tidbold          | Depok                        | Indonesia |
|  877 | Auroora Wands        | Uchkulan                     | Russia    |
|  878 | Pegeen Mintoff       | Tagog                        | Indonesia |
|  882 | Joellen Schiersch    | Laka                         | Indonesia |
|  886 | Valencia Berisford   | Fukadale                     | Indonesia |
|  889 | Edmon Pagett         | Kadubera                     | Indonesia |
|  890 | Demetrius Kiehnlt    | Kalumpang                    | Indonesia |
|  891 | Johnathan Partington | Kimry                        | Russia    |
|  894 | Naomi Quincee        | Mentoro Wetan                | Indonesia |
|  898 | Leelah Irlam         | Jambuwerkrajan               | Indonesia |
|  901 | Desdemona Bedham     | Rancapeundey                 | Indonesia |
|  904 | Jessalyn Ochiltree   | UstΓÇÖ-Kachka                | Russia    |
|  912 | Garwood Fridlington  | Novokhovrino                 | Russia    |
|  923 | Susy Tidcomb         | Andongrejo                   | Indonesia |
|  928 | Del Goodlet          | Yekimovichi                  | Russia    |
|  933 | Allison Wickes       | Pulaupanggung                | Indonesia |
|  934 | Chane Levett         | Parang                       | Indonesia |
|  939 | Cristine Crevagh     | Pasirmukti                   | Indonesia |
|  942 | Diannne Medlar       | Kolpny                       | Russia    |
|  948 | Regine Beacham       | Manzherok                    | Russia    |
|  950 | Rennie Madden        | Inta                         | Russia    |
|  956 | Ruthanne Stannah     | Saparua                      | Indonesia |
|  959 | Bernarr Pilling      | Ngembo                       | Indonesia |
|  960 | Minnie Forrester     | Pushkino                     | Russia    |
|  967 | Saree Edmondson      | Salinggara                   | Indonesia |
|  970 | Harp Kauscher        | Kertahayu                    | Indonesia |
|  982 | Faythe Goghin        | Terong                       | Indonesia |
|  985 | Tore Crudgington     | Taremskoye                   | Russia    |
|  995 | Emyle Ablott         | Rato                         | Indonesia |
| 1000 | Malynda Thombleson   | Kampungraja                  | Indonesia |
+------+----------------------+------------------------------+-----------+
161 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE country IN ('Indonesia','Russia','China');
+------+-----------------------+------------------------------+-----------+
| id   | name                  | city                         | country   |
+------+-----------------------+------------------------------+-----------+
|    5 | Latrena Mighele       | Zhujiang                     | China     |
|    7 | Raimundo Schaben      | Tarusa                       | Russia    |
|   16 | Cecilla Ffrench       | Mudanjiang                   | China     |
|   23 | Sisely Anwell         | Ukhta                        | Russia    |
|   24 | Elvin Edmundson       | Shakhty                      | Russia    |
|   26 | Locke Latchford       | Dushi                        | China     |
|   30 | Flin Fardo            | Daeosin Satu                 | Indonesia |
|   32 | Brietta Winskill      | Ciampea                      | Indonesia |
|   34 | Johny McGrann         | Longlisuo                    | China     |
|   36 | Rhodie Meigh          | ShalΓÇÖskiy                  | Russia    |
|   37 | Ignazio Ughini        | Liudong                      | China     |
|   38 | Chrisy Royson         | Khvatovka                    | Russia    |
|   41 | Cayla Hales           | Nanmuping                    | China     |
|   44 | Waylen Semor          | Chenjiahe                    | China     |
|   45 | Cross Newlands        | Uchaly                       | Russia    |
|   47 | Emalee Brixham        | Nevinnomyssk                 | Russia    |
|   48 | Jedd Haslen           | Huangcun                     | China     |
|   51 | Vitia Court           | Huangzhai                    | China     |
|   53 | Carolyne Sandells     | Bajera                       | Indonesia |
|   55 | Sammy Andrejevic      | Datangzhuang                 | China     |
|   59 | Ruttger Stannett      | Tanzybey                     | Russia    |
|   66 | Neilla Poupard        | Jiangwei                     | China     |
|   72 | Livvyy Drinkwater     | Ciakar                       | Indonesia |
|   81 | Kennith Matyja        | Hayan Hudong                 | China     |
|   82 | Cash Heersma          | Saparua                      | Indonesia |
|   86 | Johanna Dreigher      | Taiping                      | China     |
|   89 | Dion Rummins          | Leles                        | Indonesia |
|   90 | Fairfax Ficken        | Jangkat                      | Indonesia |
|   91 | Mahmoud Gasperi       | WangΓÇÖer                    | China     |
|   92 | Peta Hargerie         | Talitsa                      | Russia    |
|   99 | Adorne Wrangle        | Huaqiu                       | China     |
|  101 | Burk Adel             | Hongtang                     | China     |
|  102 | Sloane Sawdon         | σƒÄΘâè                       | China     |
|  106 | Jedd Dodwell          | Staraya Derevnya             | Russia    |
|  111 | Bogart Lickorish      | Xingcheng                    | China     |
|  114 | Bastian Fildes        | Krasnokamensk                | Russia    |
|  115 | Idaline Croster       | Panoongan                    | Indonesia |
|  116 | Yard Berresford       | Jiukeng                      | China     |
|  118 | Othelia Seares        | Shuangpengxi                 | China     |
|  127 | Amabelle Bradie       | Qingtang                     | China     |
|  132 | Micah Clitheroe       | Cibatu                       | Indonesia |
|  134 | Olive Condie          | Basar                        | China     |
|  135 | Carolee Ortells       | Yanwan                       | China     |
|  136 | Eadith De Coursey     | Naberezhnyye Chelny          | Russia    |
|  142 | Suzy Baiss            | Zengguang                    | China     |
|  143 | Loretta Everill       | Dongkeng                     | China     |
|  146 | Georges Lebang        | Kholmsk                      | Russia    |
|  150 | Ashia Verni           | Temirgoyevskaya              | Russia    |
|  152 | Candi Loadman         | Pancoran                     | Indonesia |
|  154 | Dorine Kyles          | Dungkek Laok                 | Indonesia |
|  155 | Doti Williams         | Batusangkar                  | Indonesia |
|  160 | Suki Ringsell         | Lailunggi                    | Indonesia |
|  164 | Karna Cashford        | Gayamsari                    | Indonesia |
|  168 | Euphemia Boik         | Yihe                         | China     |
|  169 | Cam Cunrado           | Baxiangshan                  | China     |
|  172 | Maribeth Bannon       | Secang Barat                 | Indonesia |
|  173 | Lutero Booley         | Fengmu                       | China     |
|  177 | Othilie Asquez        | Buchou                       | China     |
|  178 | Hube Passfield        | Warungtanjung                | Indonesia |
|  179 | Rosanne Murt          | Pancalan                     | Indonesia |
|  181 | Goraud Shenfish       | Winong                       | Indonesia |
|  182 | Frankie Tolworthy     | Sukakerta                    | Indonesia |
|  183 | Bridgette Jerrold     | Tangwang                     | China     |
|  184 | Gasper Sercombe       | Sukacai Tengah               | Indonesia |
|  188 | Sigfried Deignan      | Fencheng                     | China     |
|  192 | Ora Terrett           | Yakovlevo                    | Russia    |
|  193 | Evangelia Duncan      | Baisha                       | China     |
|  199 | Gerianna Hackleton    | AltufΓÇÖyevskiy              | Russia    |
|  200 | Jordana Seefeldt      | Kroya                        | Indonesia |
|  204 | Jorry Ivanishev       | Tongxing                     | China     |
|  210 | Rosana Barnson        | Ngrejo                       | Indonesia |
|  211 | Franz Lovegrove       | Leyuan                       | China     |
|  213 | Lorianne Snazle       | Nangabere                    | Indonesia |
|  218 | Gaspard Rathbourne    | Sindanghayu                  | Indonesia |
|  220 | Lind Larratt          | Beilun                       | China     |
|  221 | Elspeth Latus         | Haozigang                    | China     |
|  223 | Dimitri Middleweek    | Cisewu                       | Indonesia |
|  233 | Haskell Merigon       | Donskoye                     | Russia    |
|  234 | Emlen Adnet           | Liqizhuang                   | China     |
|  239 | Stacia Ceeley         | Shenshu                      | China     |
|  240 | Issi Ellicott         | Yingjiang                    | China     |
|  244 | Briant Wethered       | Mliwang                      | Indonesia |
|  246 | Tito Franciskiewicz   | Dengok                       | Indonesia |
|  250 | Maud Diche            | Daba                         | China     |
|  253 | Chris Warmington      | Cikayas                      | Indonesia |
|  254 | Bing Francecione      | Sabang                       | Indonesia |
|  255 | Aurelea Ozelton       | Chenfangji                   | China     |
|  256 | Rudie Stritton        | Pejukutan                    | Indonesia |
|  257 | Dorette Oldacres      | Jami                         | Indonesia |
|  258 | Ida Kingsnoad         | Yuzhai                       | China     |
|  261 | Kasey Osgorby         | Rantaupanjangkiri            | Indonesia |
|  279 | Bria Gwillym          | Krasnogvardeyets             | Russia    |
|  283 | Siffre Betke          | Sanli                        | China     |
|  285 | Elissa Gathwaite      | Xuanzhou                     | China     |
|  286 | Leanora Elloit        | Asemanis                     | Indonesia |
|  287 | Elihu Soan            | Xiangqiao                    | China     |
|  290 | Isaak Sirrell         | Banjar Banyualit             | Indonesia |
|  296 | Crawford Mairs        | Xidoupu                      | China     |
|  304 | Gale Lanmeid          | Pravdinsk                    | Russia    |
|  307 | Bobby Fillary         | Sidomulyo Kulon              | Indonesia |
|  310 | Clarinda Carillo      | Mabai                        | China     |
|  311 | Arlen Spadari         | Uglyanets                    | Russia    |
|  317 | Tanitansy Iddon       | Huangsha                     | China     |
|  323 | Wain Hirsthouse       | Cikadondongdesa              | Indonesia |
|  327 | Leese Dowtry          | Hongchun                     | China     |
|  329 | Shani Guilaem         | Jadho                        | Indonesia |
|  335 | Audrey Sieve          | Fanzhuang                    | China     |
|  336 | Ethelred Dayley       | Xiangyang                    | China     |
|  337 | Milzie Borsay         | Suci Kaler                   | Indonesia |
|  338 | Raviv Cay             | Krajan Suko Kidul            | Indonesia |
|  339 | Marne Kliche          | Yuetang                      | China     |
|  343 | Garald McFadin        | Shicha                       | China     |
|  347 | Dreddy Schroder       | Karangpaningal               | Indonesia |
|  348 | Audre Lingner         | Kendung Timur                | Indonesia |
|  351 | Alleen Meininger      | Kangalassy                   | Russia    |
|  356 | Tatum Taberner        | Huanggangshan                | China     |
|  360 | Codi Stenning         | Sumberdadi                   | Indonesia |
|  364 | Susanne Klassman      | Beloye                       | Russia    |
|  365 | Gardener Domerc       | Changtang                    | China     |
|  370 | Irma Frany            | Huozhuangzi                  | China     |
|  372 | Ajay Birrell          | Shiziling                    | China     |
|  373 | Cherida Tenant        | Dabaozi                      | China     |
|  374 | Norbert Close         | Tula                         | Russia    |
|  376 | Emelia McIlenna       | Mojosari                     | Indonesia |
|  377 | Dasi Kaspar           | Xingguo                      | China     |
|  380 | Kennan Boij           | Butungan                     | Indonesia |
|  381 | Wilfrid Spurrett      | Bamban                       | Indonesia |
|  389 | Glori Vollam          | Hushan                       | China     |
|  393 | Durant Barmadier      | Qianjin                      | China     |
|  401 | Arel Callis           | Ziketan                      | China     |
|  402 | Farlay Hatfull        | Chengbei                     | China     |
|  405 | Gustave Bruggeman     | Chenxiang                    | China     |
|  406 | Jeannie Wissbey       | Taodian                      | China     |
|  410 | Fancy Etteridge       | Changzheng                   | China     |
|  411 | Zebadiah Startin      | Mutang                       | China     |
|  417 | Johannah Penney       | Tebon                        | Indonesia |
|  420 | Niki Bluck            | Karangasem                   | Indonesia |
|  423 | Calla Pauli           | Singgit                      | Indonesia |
|  443 | Darrelle Brideau      | Mayong                       | Indonesia |
|  444 | Trixi Storrar         | Panoongan                    | Indonesia |
|  446 | Millisent Lehrian     | Tancheng                     | China     |
|  451 | Adamo Broggetti       | Nankou                       | China     |
|  457 | Olva Harwood          | Huazhou                      | China     |
|  459 | Matthaeus MacSporran  | Sankoutang                   | China     |
|  460 | Juan Malimoe          | Zhangye                      | China     |
|  461 | Peyton Wadwell        | Petrovo-DalΓÇÖneye           | Russia    |
|  462 | Brina Venable         | Cilolongokan                 | Indonesia |
|  465 | Piotr Syvret          | Jihui                        | China     |
|  466 | Albertina Swains      | Bajingzi                     | China     |
|  478 | Hobie Ottley          | Fushun                       | China     |
|  479 | Sergei Lilly          | Pandangan Kulon              | Indonesia |
|  480 | Bax Lemary            | Tianxin                      | China     |
|  481 | Crin Prandin          | Guicheng                     | China     |
|  484 | Marcellina Bussetti   | Jatisari                     | Indonesia |
|  485 | Freddy Wiburn         | DabaoΓÇÖanzhen               | China     |
|  486 | Benedicta Schulz      | Ganhe                        | China     |
|  487 | Winona Biles          | Changping                    | China     |
|  488 | Aleksandr Vaun        | Priargunsk                   | Russia    |
|  489 | Claybourne Speake     | Banjar Pangkungtibah Selatan | Indonesia |
|  490 | Kylen Tukesby         | Shuixi                       | China     |
|  492 | Eldon Stokey          | Furmanov                     | Russia    |
|  495 | Nickolai Bound        | Xujiahe                      | China     |
|  500 | Vina Fehners          | Huangji                      | China     |
|  503 | Meagan Cockaday       | Dayou                        | China     |
|  504 | Helene Basten         | Oepula                       | Indonesia |
|  505 | Rubia O'Gready        | Prupuh                       | Indonesia |
|  510 | Cleon Orcott          | Businovo                     | Russia    |
|  516 | Melantha Vanacci      | Yegorlykskaya                | Russia    |
|  518 | Tiebold Kinghorn      | Kekeran                      | Indonesia |
|  520 | Jack Hamon            | Guluoshan                    | China     |
|  522 | Kevyn Elham           | Anle                         | China     |
|  524 | Dunn Godart           | Ngawi                        | Indonesia |
|  525 | Doralyn Rew           | Zhenlai                      | China     |
|  530 | Mignonne Caillou      | Beidong                      | China     |
|  532 | Jesse Goulbourn       | Gremyachinsk                 | Russia    |
|  533 | Ambrosi Campagne      | Ruilin                       | China     |
|  534 | Betty Skillington     | Jianzhatan                   | China     |
|  538 | Kitty Himsworth       | Tuhe                         | China     |
|  541 | Heidi Roxburch        | Wujing                       | China     |
|  542 | Ivan Glendining       | Bangil                       | Indonesia |
|  543 | Dewitt Servante       | Jami                         | Indonesia |
|  544 | Charleen Durnall      | Shashi                       | China     |
|  546 | Neel D'Alesio         | Huangcun                     | China     |
|  552 | Kendricks Wakefield   | Sinarharapan                 | Indonesia |
|  555 | Karylin Piatkowski    | Pravda                       | Russia    |
|  556 | Rey Martusewicz       | Yuankeng                     | China     |
|  557 | Rochette Raffan       | Yaxi                         | China     |
|  560 | Harmon Moryson        | JiangΓÇÖan                   | China     |
|  561 | Donni Morrad          | Panzhou                      | China     |
|  563 | Emanuel Filipowicz    | Damiao                       | China     |
|  564 | Gennifer Garley       | Juegang                      | China     |
|  566 | Boycey Cardillo       | Jichang                      | China     |
|  576 | Storm Klimochkin      | Hobor                        | China     |
|  586 | Dyna Drepp            | Shalang                      | China     |
|  589 | Lowe Eilhart          | Waiwejak                     | Indonesia |
|  592 | Brita Highman         | Zhengwan                     | China     |
|  593 | Reilly Malatalant     | Suka Makmue                  | Indonesia |
|  595 | Sherill Beecraft      | Long Loreh                   | Indonesia |
|  600 | Brok Copyn            | Lewolen                      | Indonesia |
|  602 | Luelle Vasyunichev    | Sumurwaru                    | Indonesia |
|  603 | Salim Woolf           | Yunlong                      | China     |
|  606 | Hy Earey              | Xinxi                        | China     |
|  610 | Amabel Saiens         | Guhuai                       | China     |
|  612 | Kirstyn Brice         | Yayao                        | China     |
|  621 | Dimitry Gard          | Tangquan                     | China     |
|  631 | Alexandr Gomersall    | Maochen                      | China     |
|  636 | Rancell Litt          | Bulakan                      | Indonesia |
|  637 | Pennie Hyde           | Lipu                         | China     |
|  641 | Terza Aldous          | Ngadri                       | Indonesia |
|  642 | Rennie Greenham       | Linxihe                      | China     |
|  644 | Morgen Burree         | Yalukou                      | China     |
|  645 | Valentine Laytham     | Nantuo                       | China     |
|  646 | Max Sibson            | Purut                        | Indonesia |
|  653 | Callida Putman        | Salakuray                    | Indonesia |
|  656 | Aviva Clayfield       | Jinchang                     | China     |
|  661 | Kiah Airey            | Hepu                         | China     |
|  662 | Eduino Berkeley       | Jingdezhen                   | China     |
|  670 | Letty Anthona         | Tianxingchang                | China     |
|  672 | Gabriela Cromarty     | Jiamiao                      | China     |
|  673 | Abagail Prewett       | Dangbigih                    | Indonesia |
|  677 | Gage Bengoechea       | Jiangshan                    | China     |
|  682 | Tawsha Winchcomb      | Shidu                        | China     |
|  686 | Erin Taunton.         | Puqi                         | China     |
|  687 | Eugene Gouldthorpe    | Taoyuan                      | China     |
|  688 | Clerc Beeble          | Jorong                       | Indonesia |
|  690 | Mikey Orteaux         | Taozhuang                    | China     |
|  691 | Tybalt Fleetham       | Razumnoye                    | Russia    |
|  692 | Sutton Dikels         | Chengnan                     | China     |
|  693 | Fianna Lambie         | Hanting                      | China     |
|  694 | Chrissie Danovich     | SolΓÇÖtsy                    | Russia    |
|  695 | Van Collen            | Rostov                       | Russia    |
|  696 | Laird Laxen           | Parabon                      | Indonesia |
|  699 | Vasily Grimshaw       | Huanghuatan                  | China     |
|  704 | Tabatha Antoney       | Yitang                       | China     |
|  706 | Marlo Asche           | Shigu                        | China     |
|  710 | Zared Friedman        | Guanjiabao                   | China     |
|  712 | Dela Manley           | Yanggang                     | China     |
|  714 | Marita McCreadie      | Yongchang                    | China     |
|  715 | Betti Vasilevich      | Chengyang                    | China     |
|  717 | Janean Snoddon        | Chicheng                     | China     |
|  718 | Tania Layborn         | Xiangtang                    | China     |
|  720 | Rabbi Micka           | Sanjiazi                     | China     |
|  721 | Trudie Gonzalez       | Zheshart                     | Russia    |
|  726 | Gib Hamfleet          | Starodub                     | Russia    |
|  727 | Suzanna Sibylla       | Shangdongjie                 | China     |
|  729 | Jimmy Anyene          | Ganpu                        | China     |
|  732 | Octavius Gowdy        | Gornorechenskiy              | Russia    |
|  734 | Sylvia Bisacre        | Pokrovskoye-Streshn├½vo      | Russia    |
|  735 | Elly Pigeram          | Dongdai                      | China     |
|  736 | Rosemaria Manvelle    | Nagornyy                     | Russia    |
|  737 | Lorain Chansonne      | Xiabao                       | China     |
|  738 | Hetti Nevet           | Jianxin                      | China     |
|  739 | Cecily McAdam         | Xiongchi                     | China     |
|  745 | Koenraad Agerskow     | Merdeka                      | Indonesia |
|  747 | Carlin Jakubczyk      | Renhe                        | China     |
|  748 | Will Cringle          | Rangmanten                   | Indonesia |
|  753 | Sosanna Jurkowski     | YantalΓÇÖ                    | Russia    |
|  755 | Ella Ullett           | Xinrong                      | China     |
|  756 | Dalenna McQuillen     | Qingshi                      | China     |
|  757 | Toddie Deme           | Liutangting                  | China     |
|  763 | Delmor Gilbard        | Banjar Kawan                 | Indonesia |
|  767 | Gordan Screen         | Changqing                    | China     |
|  769 | Brock Braybrook       | Hancheng                     | China     |
|  770 | Alric Chate           | Cigintung                    | Indonesia |
|  777 | Lauralee Zealander    | Awilega                      | Indonesia |
|  778 | Arv Kornalik          | Karasuk                      | Russia    |
|  779 | Romain Sandyfirth     | Wenshao                      | China     |
|  781 | Nara Speakman         | Nantang                      | China     |
|  784 | Allin Bernardotti     | Jiantianjie                  | China     |
|  786 | Christy Jordan        | Mayanhe                      | China     |
|  787 | Barbey Brotherheed    | Xingou                       | China     |
|  789 | Beatriz Overlow       | Yangdu                       | China     |
|  796 | Evelin Nattrass       | Xuebu                        | China     |
|  798 | Leese Clackers        | Xianzong                     | China     |
|  799 | Elissa Blackley       | Yangyong                     | China     |
|  800 | Davis Bidewell        | Sipeng                       | China     |
|  803 | Wilie Tipler          | Xiayang                      | China     |
|  805 | Therine Demelt        | Kaduheuleut                  | Indonesia |
|  806 | Stephanus D'Agostino  | Gannan                       | China     |
|  810 | Franciska Challoner   | Jincun                       | China     |
|  811 | Angelle Cordeau       | Jingxi                       | China     |
|  813 | Luther McCloid        | Dzhayrakh                    | Russia    |
|  814 | Sadye Smelley         | Prokhladnyy                  | Russia    |
|  816 | Wait Switzer          | Zhaogezhuang                 | China     |
|  821 | Junette Zanni         | Fenggao                      | China     |
|  822 | Aveline Comford       | Pasirnangka                  | Indonesia |
|  823 | Giffie Kropp          | Krajan Baru                  | Indonesia |
|  825 | Laurice Gilhespy      | Nagrog                       | Indonesia |
|  827 | Elbertina Bradnam     | Xinhua                       | China     |
|  829 | Opalina Moine         | Saihan Tal                   | China     |
|  830 | Davidde Gabrieli      | Novodvinsk                   | Russia    |
|  831 | Nathaniel Woodfield   | Liuche                       | China     |
|  833 | Caddric Skacel        | Sebasang                     | Indonesia |
|  835 | Jeramey Bettinson     | Dingtao                      | China     |
|  838 | Nadean Goodfellow     | Renhe                        | China     |
|  840 | Caz Coomer            | Bungkal                      | Indonesia |
|  847 | Hubert Ord            | Jinkou                       | China     |
|  851 | Maurita Mussettini    | Lukou                        | China     |
|  852 | Zorine Pauletto       | Tengah                       | Indonesia |
|  853 | Desiri Haylands       | Petrovskaya                  | Russia    |
|  856 | Luce Coenraets        | Sukhinichi                   | Russia    |
|  857 | Cheston Abrashkin     | Jiyizhuang                   | China     |
|  858 | Lyndel Morffew        | Changpo                      | China     |
|  865 | Celle Wimmer          | Huitang                      | China     |
|  866 | Sela Paull            | Gaoyao                       | China     |
|  867 | Kimbra Keppel         | Mahong                       | China     |
|  868 | Rosana Hansford       | Campraksanta                 | Indonesia |
|  872 | Una Tidbold           | Depok                        | Indonesia |
|  877 | Auroora Wands         | Uchkulan                     | Russia    |
|  878 | Pegeen Mintoff        | Tagog                        | Indonesia |
|  881 | Consolata Ragbourne   | Huangtian                    | China     |
|  882 | Joellen Schiersch     | Laka                         | Indonesia |
|  885 | Denney Hearthfield    | Panjiawan                    | China     |
|  886 | Valencia Berisford    | Fukadale                     | Indonesia |
|  889 | Edmon Pagett          | Kadubera                     | Indonesia |
|  890 | Demetrius Kiehnlt     | Kalumpang                    | Indonesia |
|  891 | Johnathan Partington  | Kimry                        | Russia    |
|  894 | Naomi Quincee         | Mentoro Wetan                | Indonesia |
|  897 | Rosene Strodder       | Jizhou                       | China     |
|  898 | Leelah Irlam          | Jambuwerkrajan               | Indonesia |
|  901 | Desdemona Bedham      | Rancapeundey                 | Indonesia |
|  903 | Alonso Ianitti        | Lainqu                       | China     |
|  904 | Jessalyn Ochiltree    | UstΓÇÖ-Kachka                | Russia    |
|  909 | Timotheus Cadwallader | Daoqiao                      | China     |
|  911 | Laurent Beasley       | Lianhe                       | China     |
|  912 | Garwood Fridlington   | Novokhovrino                 | Russia    |
|  915 | Griswold Balentyne    | Jishu                        | China     |
|  923 | Susy Tidcomb          | Andongrejo                   | Indonesia |
|  924 | Elva Robert           | Sancha                       | China     |
|  928 | Del Goodlet           | Yekimovichi                  | Russia    |
|  932 | Karna Fetteplace      | Shuozhou                     | China     |
|  933 | Allison Wickes        | Pulaupanggung                | Indonesia |
|  934 | Chane Levett          | Parang                       | Indonesia |
|  935 | Gretta Dran           | Fucha                        | China     |
|  936 | Randall Zum Felde     | Chengyang                    | China     |
|  939 | Cristine Crevagh      | Pasirmukti                   | Indonesia |
|  940 | Clem Naseby           | Rentian                      | China     |
|  942 | Diannne Medlar        | Kolpny                       | Russia    |
|  944 | Tomas Jowett          | Yingzai                      | China     |
|  945 | Delora Poynter        | Zhaogezhuang                 | China     |
|  948 | Regine Beacham        | Manzherok                    | Russia    |
|  950 | Rennie Madden         | Inta                         | Russia    |
|  953 | Walden Fortin         | Xichuan                      | China     |
|  954 | Marcus Eldin          | Mengyin                      | China     |
|  956 | Ruthanne Stannah      | Saparua                      | Indonesia |
|  959 | Bernarr Pilling       | Ngembo                       | Indonesia |
|  960 | Minnie Forrester      | Pushkino                     | Russia    |
|  961 | Nealson Mytton        | Yidao                        | China     |
|  962 | Gertrud Houlridge     | Jianshan                     | China     |
|  967 | Saree Edmondson       | Salinggara                   | Indonesia |
|  970 | Harp Kauscher         | Kertahayu                    | Indonesia |
|  974 | Francesco Garrigan    | Yuanjiazhuang                | China     |
|  979 | Glenine Belfrage      | Zhuhe                        | China     |
|  982 | Faythe Goghin         | Terong                       | Indonesia |
|  984 | Allyson Fulle         | Nanhe                        | China     |
|  985 | Tore Crudgington      | Taremskoye                   | Russia    |
|  986 | Damaris McKeurtan     | Yunhe                        | China     |
|  992 | Valentina Baudrey     | Jiedu                        | China     |
|  995 | Emyle Ablott          | Rato                         | Indonesia |
|  996 | Kermy Narducci        | Aizi                         | China     |
|  998 | Clotilda Skeels       | Liulin                       | China     |
| 1000 | Malynda Thombleson    | Kampungraja                  | Indonesia |
+------+-----------------------+------------------------------+-----------+
362 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE city LIKE 'ber%';
Empty set (0.010 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE city LIKE '%in';
+-----+------------------+-------------+----------------+
| id  | name             | city        | country        |
+-----+------------------+-------------+----------------+
|  58 | Herbert Burnside | Jutrosin    | Poland         |
| 163 | Isabella Keggin  | Sukhirin    | Thailand       |
| 334 | Murvyn Altofts   | El Capulin  | Mexico         |
| 393 | Durant Barmadier | Qianjin     | China          |
| 480 | Bax Lemary       | Tianxin     | China          |
| 533 | Ambrosi Campagne | Ruilin      | China          |
| 738 | Hetti Nevet      | Jianxin     | China          |
| 749 | Jessie Turnbull  | San Agustin | Philippines    |
| 937 | Marijo Pugsley   | Newbiggin   | United Kingdom |
| 954 | Marcus Eldin     | Mengyin     | China          |
| 998 | Clotilda Skeels  | Liulin      | China          |
| 999 | Rachel Coldrick  | Taphan Hin  | Thailand       |
+-----+------------------+-------------+----------------+
12 rows in set (0.009 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE city LIKE 'a%';
+-----+----------------------+-------------------+-----------------------+
| id  | name                 | city              | country               |
+-----+----------------------+-------------------+-----------------------+
|  25 | Brett Boissier       | Al MaΓÇÿall─üΓÇÖ  | Yemen                 |
|  80 | Dasi Leaming         | Al Jubayhah       | Jordan                |
|  87 | Louie Whitewood      | Amaury            | Mauritius             |
| 145 | Cathrine Spalding    | Aian├¡            | Greece                |
| 191 | Kevyn Targetter      | Al May─üd─½n      | Syria                 |
| 199 | Gerianna Hackleton   | AltufΓÇÖyevskiy   | Russia                |
| 226 | Deane Simonaitis     | Altos             | Brazil                |
| 237 | Hilarius Efford      | Alofi             | Niue                  |
| 241 | Jocelyn Caret        | Altos             | Paraguay              |
| 242 | Jordana Raithbie     | Atins             | Brazil                |
| 269 | Glenn Cotilard       | Ape               | Latvia                |
| 271 | Marris Wadly         | Amarillo          | United States         |
| 286 | Leanora Elloit       | Asemanis          | Indonesia             |
| 313 | Pauly Feuell         | Angoul├¬me        | France                |
| 314 | Marleen Whitmore     | Arruda dos Vinhos | Portugal              |
| 318 | Bertie Scherme       | Al Matl─½n        | Tunisia               |
| 400 | Michelina Kingcote   | Arnhem            | Netherlands           |
| 421 | Friederike Marusic   | Andorinha         | Portugal              |
| 425 | Marti Bassindale     | Aanislag          | Philippines           |
| 476 | Cris Jezzard         | Alcoutim          | Portugal              |
| 494 | Mordecai Batterton   | Acli              | Philippines           |
| 522 | Kevyn Elham          | Anle              | China                 |
| 554 | Andrey Gentil        | Arrentela         | Portugal              |
| 573 | Madel Brummitt       | Apartad├│         | Colombia              |
| 581 | Conni Dumbar         | Asahi             | Japan                 |
| 599 | Stormi Brideau       | Al H─üshim─½yah   | Palestinian Territory |
| 634 | De witt Bothie       | Ayd┼½n            | Jordan                |
| 635 | Carissa Le Fleming   | A┼ƒ ┼₧afaqayn     | Yemen                 |
| 689 | Margareta Devers     | Al Fashn          | Egypt                 |
| 742 | Raymund Hincks       | Al Mars├í         | Tunisia               |
| 777 | Lauralee Zealander   | Awilega           | Indonesia             |
| 793 | Derby Cabena         | As S┼½q al Jad─½d | Yemen                 |
| 801 | Marthena Bruni       | Algoz             | Portugal              |
| 807 | Lesly Rushbrook      | Akn─½ste          | Latvia                |
| 809 | Langsdon Benadette   | Asaka             | Japan                 |
| 817 | Loydie Jopson        | Alabat            | Philippines           |
| 843 | Nikolia Apfelmann    | As Saff─ün─½yah   | Saudi Arabia          |
| 892 | Portia Roston        | AntopalΓÇÖ        | Belarus               |
| 919 | Luz Burfoot          | Akaki             | Cyprus                |
| 923 | Susy Tidcomb         | Andongrejo        | Indonesia             |
| 930 | Emmery Hulme         | Al ß╕¿umayd─üt    | Yemen                 |
| 965 | Veronica Alexsandrov | Ambatolampy       | Madagascar            |
| 975 | Tadd Camous          | Alegre            | Brazil                |
| 976 | Loraine Bride        | Aurora            | Philippines           |
| 981 | Becky Wiggett        | Andrushivka       | Ukraine               |
| 993 | Lyman Camsey         | Anuling           | Philippines           |
| 996 | Kermy Narducci       | Aizi              | China                 |
+-----+----------------------+-------------------+-----------------------+
47 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> WHERE city LIKE '%ne%';
+-----+-------------------+--------------------------------+----------------+
| id  | name              | city                           | country        |
+-----+-------------------+--------------------------------+----------------+
|  47 | Emalee Brixham    | Nevinnomyssk                   | Russia         |
|  98 | Francoise Oswald  | Melioratyvne                   | Ukraine        |
| 198 | Fair Pourveer     | Ribeir├úo das Neves            | Brazil         |
| 228 | Terrill Filippyev | Vodyane                        | Ukraine        |
| 236 | Clarette Bygraves | La Plaine-Saint-Denis          | France         |
| 263 | Bradly Fidler     | Banepa                         | Nepal          |
| 311 | Arlen Spadari     | Uglyanets                      | Russia         |
| 332 | Izaak Zaniolini   | Neß║ûalim                      | Israel         |
| 394 | Olivette Mokes    | Nepalgunj                      | Nepal          |
| 436 | Ramon Stoven      | Neni                           | Nigeria        |
| 461 | Peyton Wadwell    | Petrovo-DalΓÇÖneye             | Russia         |
| 473 | Talia Waddup      | Suresnes                       | France         |
| 519 | Susette Sweed     | Eaubonne                       | France         |
| 545 | Trev Wickes       | New York City                  | United States  |
| 550 | Iain Glowacha     | Libertador General San Mart├¡n | Argentina      |
| 583 | Aubrey Hymers     | Nepalgunj                      | Nepal          |
| 654 | Alec Vivyan       | TΓÇÖianetΓÇÖi                  | Georgia        |
| 659 | Del Ferreres      | Kariat Arkmane                 | Morocco        |
| 698 | Bernadene Kellie  | Ladner                         | Canada         |
| 733 | Laraine Blouet    | Lunenburg                      | Canada         |
| 773 | Bethina De Luna   | Blizne                         | Poland         |
| 841 | Jobyna Perico     | Sydney                         | Australia      |
| 848 | Valery Drohan     | Neiafu                         | Tonga          |
| 916 | Giovanna Sangster | Tajerouine                     | Tunisia        |
| 937 | Marijo Pugsley    | Newbiggin                      | United Kingdom |
| 941 | Blanca Jee        | Lagny-sur-Marne                | France         |
| 955 | Lonee Bembrigg    | Krasne                         | Poland         |
+-----+-------------------+--------------------------------+----------------+
27 rows in set (0.001 sec)

MariaDB [latihan_mysql]>