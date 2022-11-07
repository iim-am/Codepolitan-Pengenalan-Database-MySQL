
C:\xampp\mysql\bin>mysql.exe -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.25-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW TABLES;
ERROR 1046 (3D000): No database selected
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
MariaDB [latihan_mysql]> SHOW TABLES;
+-------------------------+
| Tables_in_latihan_mysql |
+-------------------------+
| customers               |
| items                   |
| orders                  |
| products                |
+-------------------------+
4 rows in set (0.001 sec)

MariaDB [latihan_mysql]> DESCRIBE orders;
+-------------+-----------+------+-----+---------------------+-------------------------------+
| Field       | Type      | Null | Key | Default             | Extra                         |
+-------------+-----------+------+-----+---------------------+-------------------------------+
| id          | int(11)   | NO   | PRI | NULL                | auto_increment                |
| customer_id | int(11)   | NO   | MUL | NULL                |                               |
| date        | timestamp | NO   |     | current_timestamp() | on update current_timestamp() |
+-------------+-----------+------+-----+---------------------+-------------------------------+
3 rows in set (0.032 sec)

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
5 rows in set (0.021 sec)

MariaDB [latihan_mysql]> SELECT * FROM orders
    -> CROSS JOIN customers
    -> LIMIT 10;
Empty set (0.009 sec)

MariaDB [latihan_mysql]> SELECT * FROM orders;
Empty set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers;
+------+--------------------------+------+---------------------------+----------------------------------------------+
| id   | name                     | age  | city                      | country                                      |
+------+--------------------------+------+---------------------------+----------------------------------------------+
|    1 | Case Tainton             | 2008 | Karanganyar               | Indonesia                                    |
|    2 | Pierre Chelnam           | 2007 | Kalengwa                  | Zambia                                       |
|    3 | Alphonso Kunzel          | 2002 | Cigarogol                 | Indonesia                                    |
|    4 | Rosalie Cosson           | 2000 | Chojnice                  | Poland                                       |
|    5 | Benedetto Girling        | 1973 | Pining                    | Indonesia                                    |
|    6 | Susann Siccombe          | 2011 | Pagak                     | Indonesia                                    |
|    7 | Carmel Yerborn           | 1993 | Unaizah                   | Saudi Arabia                                 |
|    8 | Iago Richardeau          | 1994 | M├╝llendorf               | Luxembourg                                   |
|    9 | Alene Thurman            | 2007 | Munjungan                 | Indonesia                                    |
|   10 | Ashby Ovenell            | 2006 | Ketangi                   | Indonesia                                    |
|   11 | Nananne Gilford          | 2005 | Bungabon                  | Philippines                                  |
|   12 | Clementina Caldow        | 2005 | Catal├úo                  | Brazil                                       |
|   13 | Zola Ingham              | 1993 | Portachuelo               | Bolivia                                      |
|   14 | Dorisa Guille            | 2004 | Jayanca                   | Peru                                         |
|   15 | Lizbeth Watterson        | 1998 | Nantes                    | France                                       |
|   16 | Tabor Costigan           | 1985 | Sitovo                    | Bulgaria                                     |
|   17 | Thurston Crannis         | 1996 | Oranmore                  | Ireland                                      |
|   18 | Crichton Kinman          | 1986 | Oslo                      | Norway                                       |
|   19 | Fancy McCotter           | 2006 | Matangpayang              | Indonesia                                    |
|   20 | Waylon Hassall           | 1967 | Ziway                     | Ethiopia                                     |
|   21 | Lind Brittle             | 2006 | Kivi├╡li                  | Estonia                                      |
|   22 | Binky Boater             | 1992 | Merrifield                | United States                                |
|   23 | Emera Sinkin             | 2004 | Al Qadm┼½s                | Syria                                        |
|   24 | Ezra Claasen             | 2005 | Ikar                      | Indonesia                                    |
|   25 | Thia Perrins             | 1999 | Bobonan                   | Philippines                                  |
|   26 | Curt Ravenscraft         | 2000 | Figueira Castelo Rodrigo  | Portugal                                     |
|   27 | Zea Luther               | 2008 | Lijie                     | China                                        |
|   28 | Tally Arzu               | 1995 | Aquidauana                | Brazil                                       |
|   29 | Hew Dewicke              | 1987 | Ar Rumaythah              | Iraq                                         |
|   30 | Nina Oultram             | 1994 | Brni┼ít─¢                 | Czech Republic                               |
|   31 | Alie Kirkup              | 1994 | Taldan                    | Russia                                       |
|   32 | Della Vanelli            | 1995 | Xinchengzi                | China                                        |
|   33 | Lexine De Angelo         | 2008 | Yongle                    | China                                        |
|   34 | Lonni McCaw              | 2003 | Pagnag                    | China                                        |
|   35 | Linda Keneleyside        | 1999 | Manghit                   | Uzbekistan                                   |
|   36 | Mamie Skilbeck           | 2008 | Kifr─½                    | Iraq                                         |
|   37 | Mag Kruger               | 2004 | Kne┼╛ica                  | Bosnia and Herzegovina                       |
|   38 | Nye Morfett              | 2000 | Bromma                    | Sweden                                       |
|   39 | Kaylil Arnaudot          | 2005 | Campoalegre               | Colombia                                     |
|   40 | Alain Emblow             | 2008 | Datang                    | China                                        |
|   41 | Stephana Ivashin         | 1998 | Vigo                      | Spain                                        |
|   42 | Jenica Satterfitt        | 2005 | Centro Habana             | Cuba                                         |
|   43 | Carney Duffill           | 1993 | B┼é─Öd├│w                 | Poland                                       |
|   44 | Leisha Durrans           | 1994 | Khafizan                  | Afghanistan                                  |
|   45 | Corabel Deval            | 1994 | Longyearbyen              | Svalbard and Jan Mayen                       |
|   46 | Simonette Delcastel      | 1990 | Ume├Ñ                     | Sweden                                       |
|   47 | Babara Scoggins          | 2004 | Biliri                    | Nigeria                                      |
|   48 | Glenine Gilkison         | 2002 | ├ìquira                   | Colombia                                     |
|   49 | Hendrika Harbert         | 2012 | J├ñppil├ñ                 | Finland                                      |
|   50 | Maddie Clulow            | 2011 | Venda Nova                | Portugal                                     |
|   51 | Sibylla Garter           | 1992 | Ganding                   | Indonesia                                    |
|   52 | Alexandro Roll           | 2004 | D├⌐dougou                 | Burkina Faso                                 |
|   53 | Roselia Arnold           | 2010 | Karangtalun               | Indonesia                                    |
|   54 | Valeria Pagan            | 1997 | Sampangan                 | Indonesia                                    |
|   55 | Mellisent Elcoate        | 2009 | Eenhana                   | Namibia                                      |
|   56 | Joanie Lorek             | 2011 | Longshan                  | China                                        |
|   57 | Shurlock Lambersen       | 2007 | Mengla                    | China                                        |
|   58 | Merell Ellams            | 2009 | Tatarsk                   | Russia                                       |
|   59 | Deane Fredi              | 1990 | Tapacocha                 | Peru                                         |
|   60 | Orlan Paula              | 2006 | Malonty                   | Czech Republic                               |
|   61 | Bellina Kerley           | 2006 | Orop├⌐ndolas              | Honduras                                     |
|   62 | Delmore Lyddiatt         | 1993 | Pancanagara               | Indonesia                                    |
|   63 | Janey Gelsthorpe         | 2001 | Grytviken                 | South Georgia and the South Sandwich Islands |
|   64 | Ermin Durram             | 2007 | Dingjiaqiao               | China                                        |
|   65 | Karim Murrells           | 2010 | Markaryd                  | Sweden                                       |
|   66 | Meyer Machin             | 1999 | Doghs                     | Armenia                                      |
|   67 | Karen Poel               | 1990 | Casal                     | Portugal                                     |
|   68 | Belva McCambrois         | 2001 | La Ravoire                | France                                       |
|   69 | Astrix Boyde             | 1993 | Moulay Bouchta            | Morocco                                      |
|   70 | Clem Cowland             | 1983 | Tiglauigan                | Philippines                                  |
|   71 | Reba Harget              | 2008 | Pantang                   | China                                        |
|   72 | Fabian Charge            | 1995 | Keyi                      | China                                        |
|   73 | Pembroke De Carteret     | 1998 | Kieta                     | Papua New Guinea                             |
|   74 | Emmanuel Bernardini      | 1992 | Segezha                   | Russia                                       |
|   75 | Giorgi Solley            | 2010 | Tatou                     | China                                        |
|   76 | Hali Humburton           | 2005 | Casimiro de Abreu         | Brazil                                       |
|   77 | Garrik Garvagh           | 1992 | Ban Dan                   | Thailand                                     |
|   78 | Dory Brevetor            | 2000 | Boyle                     | Ireland                                      |
|   79 | Staford Message          | 2009 | Nakkila                   | Finland                                      |
|   80 | Barry Allkins            | 2012 | Chipaque                  | Colombia                                     |
|   81 | Boyd Candie              | 1986 | Kebloran                  | Indonesia                                    |
|   82 | Donella Dahl             | 2003 | Calape                    | Philippines                                  |
|   83 | Terrence Huitson         | 2007 | Koronganayam              | Indonesia                                    |
|   84 | Scarlet Shewan           | 1998 | Nizw├í                    | Oman                                         |
|   85 | Misty Hane               | 1992 | Kaset Sombun              | Thailand                                     |
|   86 | Ralf Gauler              | 2009 | Novyye Cher├½mushki       | Russia                                       |
|   87 | Malina Gerard            | 1994 | Chrast                    | Czech Republic                               |
|   88 | Delores Ishaki           | 2004 | ByahomlΓÇÖ                | Belarus                                      |
|   89 | Norri Laherty            | 1995 | ┼îhara                    | Japan                                        |
|   90 | Zorana Luciani           | 2005 | Lille                     | France                                       |
|   91 | Devonna Carreyette       | 2011 | San Antonio               | Philippines                                  |
|   92 | Cordey Castagneri        | 2009 | Concei├º├úo do Jacu├¡pe   | Brazil                                       |
|   93 | Elsy Comrie              | 2007 | Lomboy                    | Philippines                                  |
|   94 | Scotti Goosnell          | 2011 | Yangon                    | Myanmar                                      |
|   95 | Hazel Dury               | 1993 | Navotas                   | Philippines                                  |
|   96 | Kippie Jales             | 2005 | Macapo                    | Venezuela                                    |
|   97 | Juliette McCombe         | 2011 | Sumberejo                 | Indonesia                                    |
|   98 | La verne Akenhead        | 2008 | Kebonsari                 | Indonesia                                    |
|   99 | Harvey Clarricoates      | 2000 | Yunji                     | China                                        |
|  100 | Broderic Balke           | 1996 | Nezv─¢stice               | Czech Republic                               |
|  101 | Chryste Damrell          | 1986 | Quimbaya                  | Colombia                                     |
|  102 | Sabrina Havelin          | 2005 | Sons├│n                   | Colombia                                     |
|  103 | Kaylyn Dugan             | 2009 | Dillenburg                | Germany                                      |
|  104 | Gisela Wike              | 1995 | Caldas das Taipas         | Portugal                                     |
|  105 | Meridith Schooley        | 2009 | Khlong Yai                | Thailand                                     |
|  106 | Mignonne Sindell         | 1995 | Lourido                   | Portugal                                     |
|  107 | Norry Louche             | 2009 | Zall-Dardh├½              | Albania                                      |
|  108 | Vernen Mathou            | 1988 | MaΓÇÖan                   | China                                        |
|  109 | Karrie Bertl             | 1998 | Kendaruan                 | Indonesia                                    |
|  110 | Saloma Penbarthy         | 2009 | Klenak                    | Serbia                                       |
|  111 | Hamilton Gascoine        | 1986 | Sokolovo                  | Russia                                       |
|  112 | Hedi Garralts            | 1996 | Yueyahe                   | China                                        |
|  113 | Glyn McLanachan          | 2008 | Zrenjanin                 | Serbia                                       |
|  114 | Cynthia Spafford         | 2012 | Da Nang                   | Vietnam                                      |
|  115 | Marlane Stratiff         | 1997 | Jabonga                   | Philippines                                  |
|  116 | Blondy Ure               | 2001 | Beidu                     | China                                        |
|  117 | Annette Leadston         | 2005 | Airmata                   | Indonesia                                    |
|  118 | Rollie Blaik             | 1997 | Hadyach                   | Ukraine                                      |
|  119 | Baillie Nickols          | 2006 | M─üwiyah                  | Yemen                                        |
|  120 | Vale Geratasch           | 1978 | Zhangcunping              | China                                        |
|  121 | Dana Murr                | 2009 | Ciburial                  | Indonesia                                    |
|  122 | Maridel Gozzett          | 2011 | Manika                    | Philippines                                  |
|  123 | Randee Chesney           | 1999 | Quimil├¡                  | Argentina                                    |
|  124 | Jens Bruyet              | 2004 | Casuguran                 | Philippines                                  |
|  125 | Shel Wellstood           | 2003 | Jiangchuan                | China                                        |
|  126 | Ashil Dubock             | 1973 | Las Varas                 | Argentina                                    |
|  127 | Bobbette Thunderchief    | 1995 | Boden                     | Sweden                                       |
|  128 | Teador Ioannidis         | 2002 | Qinglin                   | China                                        |
|  129 | Orran Bartoszek          | 2009 | Gryazovets                | Russia                                       |
|  130 | Yul Andreucci            | 2003 | Jinshandian               | China                                        |
|  131 | Early Antoshin           | 1992 | Malitubog                 | Philippines                                  |
|  132 | Ewell Sawden             | 1966 | Ash Sharyah               | Yemen                                        |
|  133 | Lindsey McNelis          | 2004 | Reims                     | France                                       |
|  134 | Bay Brunker              | 1996 | Kemij├ñrvi                | Finland                                      |
|  135 | Melody Fleeman           | 2007 | Yahotyn                   | Ukraine                                      |
|  136 | Sybyl Dibdin             | 2010 | Novo Horizonte            | Brazil                                       |
|  137 | Linus Pinchback          | 1998 | Gotputuk                  | Indonesia                                    |
|  138 | Ira Hanselman            | 2011 | Jianshe                   | China                                        |
|  139 | Berkie Groome            | 2003 | Yanqi                     | China                                        |
|  140 | Paloma Vinecombe         | 2008 | Al Ghand┼½rah             | Syria                                        |
|  141 | Brittne Ledrane          | 2002 | Huineno                   | Indonesia                                    |
|  142 | Fawnia Jeske             | 2001 | Vardablur                 | Armenia                                      |
|  143 | Fannie Featherstonhaugh  | 1998 | Rebrikha                  | Russia                                       |
|  144 | Kathie Pullan            | 1989 | Belogorsk─½y              | Kazakhstan                                   |
|  145 | Minnie Le-Good           | 2009 | Olinda                    | Brazil                                       |
|  146 | Kristofer Bardwell       | 1991 | New Orleans               | United States                                |
|  147 | Ursula Jocelyn           | 1988 | Sauga                     | Estonia                                      |
|  148 | Edy Clarey               | 1997 | Krasna                    | Ukraine                                      |
|  149 | Debi Dunbavin            | 2012 | Sviadnov                  | Czech Republic                               |
|  150 | Jeralee Bettenay         | 1998 | Rubizhne                  | Ukraine                                      |
|  151 | Orazio Erangey           | 2008 | Aws─½m                    | Egypt                                        |
|  152 | Ardelis Casini           | 2011 | Kru┼íevac                 | Serbia                                       |
|  153 | Dimitry Maddox           | 2011 | Fenyan                    | China                                        |
|  154 | Yehudi Jackways          | 2006 | Shuangxi                  | China                                        |
|  155 | Erhard Pecha             | 2007 | Heshi                     | China                                        |
|  156 | Yalonda Housecraft       | 2008 | Yamoto                    | Japan                                        |
|  157 | Finn Volkes              | 1998 | Zhendong                  | China                                        |
|  158 | Melessa Mathivat         | 2006 | Limanancong               | Philippines                                  |
|  159 | Trueman Ohms             | 2001 | Ayabaca                   | Peru                                         |
|  160 | Margarethe De La Hay     | 2007 | Novi Itebej               | Serbia                                       |
|  161 | Mommy Scollard           | 2005 | Nybro                     | Sweden                                       |
|  162 | Brit Leckenby            | 1994 | Nanjie                    | China                                        |
|  163 | Kip Bingall              | 2000 | Ostoji─çevo               | Serbia                                       |
|  164 | Catherina Grinnikov      | 1998 | Huangtu                   | China                                        |
|  165 | Micky Ladel              | 1992 | Julcamarca                | Peru                                         |
|  166 | Vevay Van Der Weedenburg | 2004 | Beizhuang                 | China                                        |
|  167 | Micky Lendrem            | 1996 | Tanout                    | Niger                                        |
|  168 | Arin Mussard             | 2001 | G├╢teborg                 | Sweden                                       |
|  169 | Miof mela Calvie         | 1989 | Chigasaki                 | Japan                                        |
|  170 | Kinny Scogings           | 1987 | Anau                      | French Polynesia                             |
|  171 | Tarra Caldecott          | 1999 | Lazaro Cardenas           | Mexico                                       |
|  172 | Rudolph Craydon          | 1995 | Hecheng                   | China                                        |
|  173 | Meier Greystoke          | 2003 | Soito                     | Portugal                                     |
|  174 | Isac Fettis              | 2011 | Stupsk                    | Poland                                       |
|  175 | Zed Timms                | 2007 | Centenario                | Argentina                                    |
|  176 | Phillida Tome            | 2010 | Kieta                     | Papua New Guinea                             |
|  177 | Ganny Blenkinship        | 1996 | Bonneuil-sur-Marne        | France                                       |
|  178 | Annissa Venus            | 1999 | Krzy┼╝an├│w               | Poland                                       |
|  179 | Tammy Rowntree           | 2010 | Vilkaviskis               | Lithuania                                    |
|  180 | Tomasina Gatenby         | 2008 | Spirit River              | Canada                                       |
|  181 | Jenelle Bodle            | 2010 | Tonggu                    | China                                        |
|  182 | Caren Barron             | 1997 | Al Miqd─üd─½yah           | Iraq                                         |
|  183 | Rollins Timlin           | 2001 | V├ñstanfj├ñrd             | Finland                                      |
|  184 | Millard Mandy            | 1997 | Xinyuan                   | China                                        |
|  185 | Ajay Schoular            | 1993 | Bourg-en-Bresse           | France                                       |
|  186 | Pierson Tixier           | 2001 | Karangnongko              | Indonesia                                    |
|  187 | Godfry Winspear          | 1999 | Niwiska                   | Poland                                       |
|  188 | Martelle Kummerlowe      | 2003 | GusΓÇÖ-KhrustalΓÇÖnyy     | Russia                                       |
|  189 | Miguela Joint            | 2005 | Sidomakmur                | Indonesia                                    |
|  190 | Heinrik O'Neill          | 2012 | La Cruz                   | Mexico                                       |
|  191 | Emily Mulhall            | 2006 | UstΓÇÖ-Ulagan             | Russia                                       |
|  192 | Costanza Risbie          | 2006 | Agua Blanca               | Guatemala                                    |
|  193 | Mirabelle Summerill      | 2010 | Simapu                    | China                                        |
|  194 | Harper Cantua            | 1993 | Lameiro                   | Portugal                                     |
|  195 | Homere Pettinger         | 1994 | Lianghe                   | China                                        |
|  196 | Remington Deane          | 2012 | Sanbaishan                | China                                        |
|  197 | Chaddy Corradini         | 2004 | Sanhe                     | China                                        |
|  198 | Trip Ferrarotti          | 1950 | B┼¡stonqalΓÇÖa            | Tajikistan                                   |
|  199 | Giuseppe Semmence        | 2004 | Kru┼íevo                  | Croatia                                      |
|  200 | Tiff Vokes               | 1988 | Washington                | United States                                |
|  201 | Naomi Klasen             | 2006 | Quanzhou                  | China                                        |
|  202 | Angelico Ellesworth      | 1997 | Niuzhuang                 | China                                        |
|  203 | Binky Stoner             | 2004 | Garmeh                    | Iran                                         |
|  204 | Jonell Goldster          | 1993 | Shichuan                  | China                                        |
|  205 | Salli Ybarra             | 2003 | Bayshint                  | Mongolia                                     |
|  206 | Doreen Terram            | 2011 | Vanves                    | France                                       |
|  207 | Morena Rohlfs            | 2011 | Vale de Madeiros          | Portugal                                     |
|  208 | Ilysa Dametti            | 1986 | Margherita                | Uganda                                       |
|  209 | Kain Kersaw              | 2008 | Don Tan                   | Thailand                                     |
|  210 | Teddy Clulow             | 2009 | Marseille                 | France                                       |
|  211 | Pearla Gabbitus          | 2011 | ß╕¿uk┼½mat-e Sh─½nka─½    | Afghanistan                                  |
|  212 | Bastien Jime             | 2000 | Flores da Cunha           | Brazil                                       |
|  213 | Faye Seiter              | 2008 | Maying                    | China                                        |
|  214 | Merlina Swatland         | 2012 | Dafeng                    | China                                        |
|  215 | Dottie Demschke          | 1995 | Mariental                 | Namibia                                      |
|  216 | Dorise Burnyeat          | 2009 | Santander                 | Spain                                        |
|  217 | Almira Hooban            | 1986 | Alzamay                   | Russia                                       |
|  218 | Baron Bashford           | 1996 | Huddinge                  | Sweden                                       |
|  219 | Randie Cupper            | 2008 | Lesnikovo                 | Russia                                       |
|  220 | Elayne Raymond           | 2007 | MikunΓÇÖ                  | Russia                                       |
|  221 | Merv Buckley             | 1986 | Cabannungan Second        | Philippines                                  |
|  222 | Britney Redihough        | 2010 | Fontenay-sous-Bois        | France                                       |
|  223 | Berrie Farndale          | 1994 | Villa del Rosario         | Argentina                                    |
|  224 | Flossi Vennard           | 2008 | VerkhovΓÇÖye              | Russia                                       |
|  225 | Evered Varne             | 2006 | Tha Ruea                  | Thailand                                     |
|  226 | Percival Colegate        | 2011 | Nuevo Emperador           | Panama                                       |
|  227 | Edythe Brashaw           | 1996 | Baume-les-Dames           | France                                       |
|  228 | Gusti Barajas            | 1992 | Carcassonne               | France                                       |
|  229 | Eberto Leibold           | 2006 | ΓÇÿ┼¬r─½f                 | Palestinian Territory                        |
|  230 | Alfred Andrysek          | 2012 | Mokopane                  | South Africa                                 |
|  231 | Tyler Iggulden           | 2005 | Tukuyu                    | Tanzania                                     |
|  232 | Gertrudis Lorand         | 1997 | Extremoz                  | Brazil                                       |
|  233 | Umberto Mammatt          | 2011 | Mercedes                  | Costa Rica                                   |
|  234 | Joel Coulthard           | 1993 | Itaperu├ºu                | Brazil                                       |
|  235 | Renado Robertsson        | 1999 | Myadzyel                  | Belarus                                      |
|  236 | Wright Spearett          | 2002 | Jadho                     | Indonesia                                    |
|  237 | Dan Scarlin              | 2008 | Fuwen                     | China                                        |
|  238 | Boote Gierth             | 2009 | P├│voa do Valado          | Portugal                                     |
|  239 | Nadine Adam              | 2007 | Nueva Gerona              | Cuba                                         |
|  240 | Willabella Strasse       | 1987 | Hangkou                   | China                                        |
|  241 | Mariele Shuker           | 2007 | Bylym                     | Russia                                       |
|  242 | Alyss Bosher             | 2009 | Yunhe                     | China                                        |
|  243 | Riobard Danson           | 1994 | Pasirpanjang              | Indonesia                                    |
|  244 | Tirrell Crampsey         | 2011 | New Orleans               | United States                                |
|  245 | Sayre Menghi             | 2011 | Bocai├║va                 | Brazil                                       |
|  246 | Eberto Hallowell         | 2010 | Nobres                    | Brazil                                       |
|  247 | Rochella Ciric           | 1993 | Paphos                    | Cyprus                                       |
|  248 | Kort Burgott             | 2008 | Styl├¡da                  | Greece                                       |
|  249 | Edgard Condy             | 2004 | Raheny                    | Ireland                                      |
|  250 | Rori Benbough            | 1968 | Amaury                    | Mauritius                                    |
|  251 | Agosto Durnford          | 1996 | Jo├úo Pinheiro            | Brazil                                       |
|  252 | Joby Reilly              | 2003 | Garies                    | South Africa                                 |
|  253 | Drew Challace            | 1984 | Visby                     | Sweden                                       |
|  254 | Fawn Blethin             | 1996 | Jarash                    | Jordan                                       |
|  255 | Kain Dalziel             | 1992 | Igreja                    | Portugal                                     |
|  256 | Lizbeth Inge             | 1995 | Nakuru                    | Kenya                                        |
|  257 | Roseline Beltzner        | 1991 | Thß╗ï Trß║Ñn Tß╗ºa Ch├╣a  | Vietnam                                      |
|  258 | Roxi Woodyer             | 1970 | Xinyan                    | China                                        |
|  259 | Carmel Edney             | 1995 | Valencia                  | Philippines                                  |
|  260 | Gallard Birkmyr          | 2011 | N├ífplio                  | Greece                                       |
|  261 | Kristyn Tupman           | 2002 | Dongjia                   | China                                        |
|  262 | Guenevere Tippetts       | 2005 | Duwe                      | Indonesia                                    |
|  263 | Devin Youthead           | 1992 | Chekmagush                | Russia                                       |
|  264 | Anne-corinne La Torre    | 2008 | Quat├í                    | Brazil                                       |
|  265 | Lynde Eldershaw          | 1993 | Staraya Russa             | Russia                                       |
|  266 | Timmy Stroband           | 2004 | Baihe                     | China                                        |
|  267 | Karlie Kupec             | 1997 | Novi Kne┼╛evac            | Serbia                                       |
|  268 | Myrilla Thorby           | 2009 | Kiernozia                 | Poland                                       |
|  269 | Filide Feenan            | 2004 | L├⌐vis                    | Canada                                       |
|  270 | Vanya Cristofari         | 2009 | Patao                     | Philippines                                  |
|  271 | Corey Shavel             | 2002 | Muldersdriseloop          | South Africa                                 |
|  272 | Brier Lillecrop          | 1990 | Koronadal                 | Philippines                                  |
|  273 | Hewe Askie               | 1999 | K─ùdainiai                | Lithuania                                    |
|  274 | Jesse Splaven            | 2011 | Milaor                    | Philippines                                  |
|  275 | Giffard Kneafsey         | 1966 | Sunzhen                   | China                                        |
|  276 | Basia Strevens           | 1984 | Sosnovo-Ozerskoye         | Russia                                       |
|  277 | Pen Hallstone            | 1993 | Qincheng                  | China                                        |
|  278 | Vere Fitzharris          | 2003 | Fengshan                  | China                                        |
|  279 | Ingamar Dowdell          | 2009 | ┼înoj┼ì                   | Japan                                        |
|  280 | Gabbie Wardhaugh         | 1995 | Kloulklubed               | Palau                                        |
|  281 | Lorinda Garling          | 1994 | Khond─üb                  | Iran                                         |
|  282 | Allison Willard          | 2012 | Aeka                      | Indonesia                                    |
|  283 | Maryanna Eales           | 1996 | Mugan                     | China                                        |
|  284 | Colver Coney             | 2009 | Huangyang                 | China                                        |
|  285 | Spencer Friedank         | 1963 | Gorna Oryakhovitsa        | Bulgaria                                     |
|  286 | Jackie Gath              | 1989 | Torbat-e J─üm             | Iran                                         |
|  287 | Bentley Harcombe         | 2004 | Kagoro                    | Nigeria                                      |
|  288 | Blane Grissett           | 2006 | Vanga┼╛i                  | Latvia                                       |
|  289 | Dorree Chieco            | 1989 | Atamyrat                  | Turkmenistan                                 |
|  290 | Coleen Wordesworth       | 2003 | Yuanbao                   | China                                        |
|  291 | Ruthie McCrisken         | 1992 | Jalatrang                 | Indonesia                                    |
|  292 | Gaven Wickersham         | 1995 | Carolina                  | South Africa                                 |
|  293 | Opaline Levitt           | 2009 | Mixco                     | Guatemala                                    |
|  294 | Kimbra Quaintance        | 1992 | Tabatinga                 | Brazil                                       |
|  295 | Pierette Stickings       | 1993 | Sokolnice                 | Czech Republic                               |
|  296 | Liuka Brogioni           | 2011 | Severskaya                | Russia                                       |
|  297 | Munroe Mowbray           | 2007 | Chengguan                 | China                                        |
|  298 | Salomone Packham         | 2004 | Virolahti                 | Finland                                      |
|  299 | Meier Feaks              | 2010 | Tegalwero                 | Indonesia                                    |
|  300 | Lazaro Silburn           | 2009 | Megaloch├│rion            | Greece                                       |
|  301 | Darius Bog               | 2012 | Torbay                    | Canada                                       |
|  302 | Theresita Wildman        | 2009 | Sharga                    | Mongolia                                     |
|  303 | Tommy De Luna            | 1991 | Canela                    | Brazil                                       |
|  304 | Dave Sidsaff             | 2003 | Leudelange                | Luxembourg                                   |
|  305 | Ann-marie Cubin          | 2009 | Leramatang                | Indonesia                                    |
|  306 | Daryl Vagg               | 2005 | Andilamena                | Madagascar                                   |
|  307 | Hall Rustan              | 1999 | Raphoe                    | Ireland                                      |
|  308 | Tymothy Yaneev           | 1993 | Mal─ürd                   | Iran                                         |
|  309 | Bennie Paniman           | 2005 | Longmen                   | China                                        |
|  310 | Ebonee Rowsel            | 2011 | Xiayang                   | China                                        |
|  311 | Hermy Plaunch            | 1992 | Nova Ven├⌐cia             | Brazil                                       |
|  312 | Oralee Deacock           | 1994 | Watuka                    | Indonesia                                    |
|  313 | Birk Budibent            | 1994 | Kopstal                   | Luxembourg                                   |
|  314 | Hyman Gwillym            | 1996 | Loket                     | Czech Republic                               |
|  315 | Dennis McGivena          | 1999 | Sertolovo                 | Russia                                       |
|  316 | Aida Semerad             | 2008 | Dapeng                    | China                                        |
|  317 | Libbi Drexel             | 1995 | Slobodka                  | Russia                                       |
|  318 | Nerta MacColgan          | 1997 | San Jos├⌐ del Guaviare    | Colombia                                     |
|  319 | Gunner Jonuzi            | 1999 | Ricardo Palma             | Peru                                         |
|  320 | Tasia Styche             | 2003 | Mababanaba                | Philippines                                  |
|  321 | Giacopo Challace         | 2010 | Pogranichnyy              | Russia                                       |
|  322 | Bertina Batchelor        | 2010 | Luoqiao                   | China                                        |
|  323 | Madelin Turbat           | 2009 | Baihe                     | China                                        |
|  324 | Frederigo Karadzas       | 2006 | Bang Yai                  | Thailand                                     |
|  325 | Mohandas Waterhowse      | 2007 | SeverobaykalΓÇÖsk         | Russia                                       |
|  326 | Randa Serjeantson        | 2004 | Canauay                   | Philippines                                  |
|  327 | Tiffie Cardis            | 1994 | Aparecida                 | Brazil                                       |
|  328 | Alfredo Franzman         | 2004 | Kaura Namoda              | Nigeria                                      |
|  329 | Amy Pikesley             | 2002 | Rodol├¡vos                | Greece                                       |
|  330 | Wash Burrow              | 2001 | Denton                    | United States                                |
|  331 | Chuck Piddington         | 2000 | Caraguatatuba             | Brazil                                       |
|  332 | Pearle Keitch            | 2006 | Oras                      | Philippines                                  |
|  333 | Corry Halsall            | 2001 | Malveira                  | Portugal                                     |
|  334 | Megan Mc Ilwrick         | 2004 | Parramos                  | Guatemala                                    |
|  335 | Joaquin Gager            | 2007 | Aqta┼½                    | Kazakhstan                                   |
|  336 | Desiri Temple            | 2002 | Saint AnnΓÇÖs Bay         | Jamaica                                      |
|  337 | Pavel Beslier            | 1990 | Sadang Kulon              | Indonesia                                    |
|  338 | Calley Ellis             | 2003 | Zhongchuan                | China                                        |
|  339 | Morlee Haugeh            | 2004 | Tandahimba                | Tanzania                                     |
|  340 | Sergent Raleston         | 2010 | Marale                    | Honduras                                     |
|  341 | Caritta Hamshaw          | 2007 | Shevchenkove              | Ukraine                                      |
|  342 | Borg Mc-Kerley           | 2005 | Kobylanka                 | Poland                                       |
|  343 | Emmi Trevan              | 2009 | Temorlorong               | Indonesia                                    |
|  344 | Janela Haquin            | 1993 | Smithers                  | Canada                                       |
|  345 | Cherye Korn              | 2007 | Troms├╕                   | Norway                                       |
|  346 | Francklin King           | 1995 | Buyant                    | Mongolia                                     |
|  347 | Delcine Dowbekin         | 1981 | Jab┼éonowo Pomorskie      | Poland                                       |
|  348 | Manuel Skully            | 1966 | Thß╗ï Trß║Ñn Y├¬n Ph├║    | Vietnam                                      |
|  349 | Onida Edgehill           | 2004 | Atafu Village             | Tokelau                                      |
|  350 | Laureen Giovannacc@i     | 2010 | Kuantan                   | Malaysia                                     |
|  351 | Cortie Treweek           | 2011 | Shumikha                  | Russia                                       |
|  352 | Estrella Egle of Germany | 2010 | Lubukgadang               | Indonesia                                    |
|  353 | Kristyn Tracey           | 1996 | Xiawa                     | China                                        |
|  354 | Avivah Isakov            | 2006 | Sindangsari               | Indonesia                                    |
|  355 | Teddy Mitham             | 1998 | Ganyesa                   | South Africa                                 |
|  356 | Blake Wilkinson          | 2010 | Sokolovo                  | Russia                                       |
|  357 | Paton Lightewood         | 2008 | Banjar Kelodan            | Indonesia                                    |
|  358 | Winnie Bullcock          | 2007 | Gangkou                   | China                                        |
|  359 | Maggi Maxwell            | 1998 | Puro Pinget               | Philippines                                  |
|  360 | Petra Colt               | 2004 | Ararangu├í                | Brazil                                       |
|  361 | Philly Chetham           | 2012 | Pajarillo                 | Peru                                         |
|  362 | Dacey Danneil            | 2011 | Kang─ün                   | Iran                                         |
|  363 | Irena Wooster            | 1997 | Alto do Estanqueiro       | Portugal                                     |
|  364 | Aundrea Huett            | 1995 | Monte de Trigo            | Portugal                                     |
|  365 | Gunilla Loody            | 2003 | Salaza                    | Philippines                                  |
|  366 | Roldan Nesterov          | 2013 | Studzionka                | Poland                                       |
|  367 | Kellen Shipston          | 2012 | Olleros                   | Peru                                         |
|  368 | Georgetta Ogborn         | 1994 | Zaozhuang                 | China                                        |
|  369 | Ame Linke                | 1997 | Jinping                   | China                                        |
|  370 | Tessy Ebden              | 2005 | ├älvsj├╢                  | Sweden                                       |
|  371 | Geneva Rowlings          | 1990 | Al Ghayl                  | Yemen                                        |
|  372 | Andonis Dight            | 2012 | Tocumen                   | Panama                                       |
|  373 | Sheff Folds              | 1988 | Pindorama                 | Brazil                                       |
|  374 | Lucian Gillford          | 2011 | Qiaotou                   | China                                        |
|  375 | Aurora Benkin            | 2004 | Lajeado                   | Brazil                                       |
|  376 | Pam Boscott              | 1997 | Pojok                     | Indonesia                                    |
|  377 | Tybie Dunnet             | 2009 | Perushtitsa               | Bulgaria                                     |
|  378 | Murial Boyer             | 2004 | Zhongshan Donglu          | China                                        |
|  379 | Eugenius Crome           | 2001 | Slavonice                 | Czech Republic                               |
|  380 | Arleyne Philpott         | 1993 | Baleal                    | Portugal                                     |
|  381 | Marcille Hember          | 2003 | Rontu                     | Indonesia                                    |
|  382 | Kelsi Witch              | 1995 | Angers                    | France                                       |
|  383 | Terrie Baccus            | 2010 | Karangnongko              | Indonesia                                    |
|  384 | Andrew Gaspero           | 2000 | Galat├ís                  | Greece                                       |
|  385 | Peggie Jardein           | 1985 | Purda                     | Poland                                       |
|  386 | Huey Dobrovsky           | 1988 | Oibioin                   | Indonesia                                    |
|  387 | Jonah McGirl             | 2008 | Florencio S├ínchez        | Uruguay                                      |
|  388 | Arnoldo Hebner           | 2010 | Woodford Hill             | Dominica                                     |
|  389 | Sharai Bagge             | 2006 | Kedian                    | China                                        |
|  390 | Devin Burch              | 2004 | Trzciana                  | Poland                                       |
|  391 | Ashlan Pakes             | 2011 | Pandian                   | Indonesia                                    |
|  392 | Joyan Killoran           | 1985 | Sendai                    | Japan                                        |
|  393 | Johna MacGahy            | 1999 | B─¢l├í pod Bezd─¢zem      | Czech Republic                               |
|  394 | Gerard Gerring           | 1994 | Ko─ìevje                  | Slovenia                                     |
|  395 | Theobald Braunstein      | 1992 | Tororo                    | Uganda                                       |
|  396 | Flory Leeds              | 2010 | Santa Helena              | Brazil                                       |
|  397 | Tabor Firle              | 1997 | Maisons-Laffitte          | France                                       |
|  398 | Steven Slott             | 1993 | Tran├Ñs                   | Sweden                                       |
|  399 | Trudey Lias              | 1985 | Kokar                     | Indonesia                                    |
|  400 | Normand Fergie           | 1998 | Shazhouba                 | China                                        |
|  401 | Diandra Tewes            | 2005 | Tha╠únh Ho╠üa             | Vietnam                                      |
|  402 | Valentijn Mulrooney      | 2009 | Jungkat Selatan           | Indonesia                                    |
|  403 | Chlo Malsher             | 1999 | Krajan C Wonorejo         | Indonesia                                    |
|  404 | Marylynne Eadington      | 2005 | Shahumyan                 | Armenia                                      |
|  405 | Dwain Sollom             | 1998 | Santa Cec├¡lia            | Brazil                                       |
|  406 | Lanette McClune          | 1995 | Jacarezinho               | Brazil                                       |
|  407 | Keven Formigli           | 2003 | Al Hil─üliyya             | Sudan                                        |
|  408 | Karim Wollacott          | 1992 | Nong Bun Nak              | Thailand                                     |
|  409 | Thaxter Puttrell         | 1992 | Jastrz─Öbia               | Poland                                       |
|  410 | Tony Buncher             | 1999 | Leiyang                   | China                                        |
|  411 | Nathaniel Bolesworth     | 1989 | Dubno                     | Ukraine                                      |
|  412 | Elora Langhor            | 2000 | Nowe Warpno               | Poland                                       |
|  413 | Smitty Heakey            | 2009 | Shilu                     | China                                        |
|  414 | Martin Collett           | 1994 | Liyang                    | China                                        |
|  415 | Fiann Maeer              | 2008 | Clodomira                 | Argentina                                    |
|  416 | Farra Dodimead           | 2008 | Paris 08                  | France                                       |
|  417 | Daisi Scaysbrook         | 2005 | Guanba                    | China                                        |
|  418 | Bernard Beevis           | 2012 | Ngori                     | Indonesia                                    |
|  419 | Gabie Jako               | 2006 | Andong                    | South Korea                                  |
|  420 | Ilyssa Simonich          | 1970 | Plaridel                  | Philippines                                  |
|  421 | Peter Beddoe             | 2000 | Magrath                   | Canada                                       |
|  422 | Dunn Di Bartolommeo      | 1994 | Katrineholm               | Sweden                                       |
|  423 | Kevina Pullan            | 2009 | ─îesk├╜ T─¢┼í├¡n          | Czech Republic                               |
|  424 | Flss Scutcheon           | 2005 | Cerinza                   | Colombia                                     |
|  425 | Lynea Gegg               | 1984 | Heshang                   | China                                        |
|  426 | Dwight Paladini          | 1986 | Xiaojie                   | China                                        |
|  427 | Viviana Cliburn          | 1993 | Ancenis                   | France                                       |
|  428 | Benson Shayler           | 1991 | Sindangsari               | Indonesia                                    |
|  429 | Kristen Fathers          | 1986 | Daqian                    | China                                        |
|  430 | Corie Hastilow           | 2008 | Shiyan                    | China                                        |
|  431 | Fanni Culley             | 2001 | Tianxin                   | China                                        |
|  432 | Maegan Neville           | 2010 | Summerland                | Canada                                       |
|  433 | Marvin Swatland          | 2007 | Svetlograd                | Russia                                       |
|  434 | Maxim Gioan              | 1987 | Dananshan                 | China                                        |
|  435 | Brynne Matyushenko       | 2011 | Beloyarskiy               | Russia                                       |
|  436 | Merle Waycott            | 1996 | Helsingborg               | Sweden                                       |
|  437 | Ax Hatfield              | 1984 | Sanyang                   | China                                        |
|  438 | Jacinta Gagie            | 2012 | Shuangnian                | China                                        |
|  439 | Stace Castard            | 2006 | Hangchuan                 | China                                        |
|  440 | Sara Donisthorpe         | 1993 | Bouarouss                 | Morocco                                      |
|  441 | Boy Spowage              | 1998 | Berezniki                 | Russia                                       |
|  442 | Bamby Skoughman          | 1987 | Heidelberg                | South Africa                                 |
|  443 | Dew Flowerden            | 2003 | Kafr az Zayy─üt           | Egypt                                        |
|  444 | Wallace Whillock         | 2011 | DaΓÇÖan                   | China                                        |
|  445 | Christa Dwelly           | 2004 | La Vi├▒a                  | Argentina                                    |
|  446 | Farlie Nortunen          | 1999 | Shorko                    | Pakistan                                     |
|  447 | Bartholemy Garwill       | 2009 | Opat├│wek                 | Poland                                       |
|  448 | Marlo Measham            | 1965 | Springfield               | United States                                |
|  449 | Mead Delamere            | 2002 | Elass├│na                 | Greece                                       |
|  450 | Carlen Buckham           | 2010 | Manhi├ºa                  | Mozambique                                   |
|  451 | Catlaina Crayke          | 2009 | Kawambwa                  | Zambia                                       |
|  452 | Nikos Borthe             | 2011 | D─àbie                    | Poland                                       |
|  453 | Ruthe Tether             | 2012 | Gargali├ínoi              | Greece                                       |
|  454 | Katerina Ivakhin         | 2005 | Williamsfield             | Jamaica                                      |
|  455 | Latashia Torresi         | 2008 | Fonta├¡nhas               | Portugal                                     |
|  456 | Jocko Gowrie             | 1995 | Dayou                     | China                                        |
|  457 | Xavier Annett            | 2009 | Nanling                   | China                                        |
|  458 | Essa Camolli             | 2007 | Varadero                  | Cuba                                         |
|  459 | Zebedee deKnevet         | 2002 | Argenteuil                | France                                       |
|  460 | Deina Coolbear           | 2003 | Ipoti                     | Nigeria                                      |
|  461 | Annette Carnow           | 1999 | Pozhang                   | China                                        |
|  462 | Nicolea Zamora           | 2005 | Gornyak                   | Russia                                       |
|  463 | Federico Camies          | 2006 | Sari                      | Iran                                         |
|  464 | Florenza Bomb            | 2005 | Xiaojing                  | China                                        |
|  465 | Ellene LLelweln          | 1998 | Taipingchuan              | China                                        |
|  466 | Patrica Paye             | 1985 | N├⌐a Sm├╜rni              | Greece                                       |
|  467 | Umeko Knuckles           | 2007 | Tangban                   | China                                        |
|  468 | Griz Milburne            | 2011 | Fanzeres                  | Portugal                                     |
|  469 | Scarface Alesi           | 1994 | Skinnskatteberg           | Sweden                                       |
|  470 | Shelby Bourgour          | 2005 | Changlong                 | China                                        |
|  471 | Packston Bousquet        | 2006 | Shanjie                   | China                                        |
|  472 | Pail Paterson            | 2007 | San Jer├│nimo             | Honduras                                     |
|  473 | Saundra Mullord          | 1997 | Zhujiang                  | China                                        |
|  474 | Balduin Teml             | 2001 | Semikarakorsk             | Russia                                       |
|  475 | Bridgette Powdrell       | 2000 | Umm as Summ─üq            | Jordan                                       |
|  476 | Nehemiah Lock            | 1987 | Majunying                 | China                                        |
|  477 | Dari Kneesha             | 1984 | Puerto Ayacucho           | Venezuela                                    |
|  478 | Maxie Lannon             | 1988 | Kesheng                   | China                                        |
|  479 | Johnette Musprat         | 1992 | Cachoeira                 | Brazil                                       |
|  480 | Selby Akeherst           | 1995 | Deshan                    | China                                        |
|  481 | Bibbye Eginton           | 2000 | Leigongjian               | China                                        |
|  482 | Christel Hauch           | 1992 | Morteros                  | Argentina                                    |
|  483 | Josh Jerisch             | 1985 | Kertabumi                 | Indonesia                                    |
|  484 | Bernadine Dressel        | 2006 | Oral                      | Kazakhstan                                   |
|  485 | Paul Philimore           | 2004 | Sendangrejo               | Indonesia                                    |
|  486 | Ingram Ateggart          | 1996 | Luxia                     | China                                        |
|  487 | Jared Brayson            | 2002 | Prior Velho               | Portugal                                     |
|  488 | Dewie Tallon             | 2008 | Cigintung                 | Indonesia                                    |
|  489 | Donny Astill             | 2007 | Viedma                    | Argentina                                    |
|  490 | Mildred Andreucci        | 1984 | Ca├▒averal                | Honduras                                     |
|  491 | Delphine Trusslove       | 2005 | Shu                       | Kazakhstan                                   |
|  492 | Uri Schruur              | 1993 | Vavozh                    | Russia                                       |
|  493 | Shay Dows                | 2009 | Oeiras                    | Portugal                                     |
|  494 | Grantley Filippyev       | 2003 | Baihe                     | China                                        |
|  495 | Tomkin Scoggin           | 1997 | Cergy-Pontoise            | France                                       |
|  496 | Darell MacCorley         | 1996 | NikolΓÇÖskoye             | Russia                                       |
|  497 | Michaela Loveguard       | 2005 | Obodivka                  | Ukraine                                      |
|  498 | Katerina Sives           | 2007 | Longwan                   | China                                        |
|  499 | Onfroi Tanswell          | 1997 | Gazojak                   | Turkmenistan                                 |
|  500 | Casie Giacopello         | 1993 | Bourg-en-Bresse           | France                                       |
|  501 | Felecia Endicott         | 1992 | Sokod├⌐                   | Togo                                         |
|  502 | Sascha Slora             | 2005 | Cieurih Satu              | Indonesia                                    |
|  503 | Janith Pidwell           | 2003 | Casais Baleal             | Portugal                                     |
|  504 | Jania McCane             | 2005 | Risaralda                 | Colombia                                     |
|  505 | Ortensia Gitthouse       | 2011 | Yongle                    | China                                        |
|  506 | Kerianne Hauck           | 2003 | J├╢nk├╢ping               | Sweden                                       |
|  507 | Andrew Melby             | 2007 | Quimist├ín                | Honduras                                     |
|  508 | Meg Lapsley              | 2009 | Hengshanqiao              | China                                        |
|  509 | Pierre Tidmarsh          | 2006 | Loma                      | Sierra Leone                                 |
|  510 | Shea Keaton              | 1992 | Jiangkou                  | China                                        |
|  511 | Selie Phalip             | 1994 | Sizao                     | China                                        |
|  512 | Ertha Ughi               | 2011 | Kongjiang                 | China                                        |
|  513 | Mirna Cairns             | 1992 | Jatiklampok               | Indonesia                                    |
|  514 | Milty Aspinell           | 1992 | Kebon                     | Indonesia                                    |
|  515 | Bob Asel                 | 1993 | Cikadu                    | Indonesia                                    |
|  516 | Janenna Raxworthy        | 1995 | Tripoli                   | Lebanon                                      |
|  517 | Mel Scogings             | 2008 | Monte Francisco           | Portugal                                     |
|  518 | Murial Cyson             | 1996 | Bobon                     | Philippines                                  |
|  519 | Dean Pepis               | 1998 | Samothr├íki               | Greece                                       |
|  520 | Annelise Worswick        | 1995 | B─üglung                  | Nepal                                        |
|  521 | Bridget Sarle            | 1966 | Nogliki                   | Russia                                       |
|  522 | Quintin Husbands         | 1994 | N├«mes                    | France                                       |
|  523 | Ceciley Amey             | 1994 | Anulid                    | Philippines                                  |
|  524 | Jo ann Melsom            | 1993 | Trondheim                 | Norway                                       |
|  525 | Ahmed Akister            | 2012 | Telbang                   | Philippines                                  |
|  526 | Wallie Dunbabin          | 1995 | Baojia                    | China                                        |
|  527 | Cordy de'-Ancy Willis    | 1999 | Oke Ila                   | Nigeria                                      |
|  528 | Ekaterina Halt           | 2004 | Sukojember                | Indonesia                                    |
|  529 | Rickey Kiebes            | 2010 | Lanzhong                  | China                                        |
|  530 | Kalil Lestor             | 1998 | Almelo                    | Netherlands                                  |
|  531 | Sascha Tesseyman         | 1999 | Lyubech                   | Ukraine                                      |
|  532 | Chris Tant               | 1984 | Grekan                    | Albania                                      |
|  533 | Thane Rassell            | 1989 | Jabonga                   | Philippines                                  |
|  534 | Emmie Lutwidge           | 1998 | Tangjian                  | China                                        |
|  535 | Karylin Stockman         | 1994 | Sitularang Landeuh        | Indonesia                                    |
|  536 | Zonda Barkas             | 2006 | ─░smay─▒ll─▒              | Azerbaijan                                   |
|  537 | Shoshanna Shama          | 2010 | Liuzuo                    | China                                        |
|  538 | Burch Sharplin           | 2011 | Oepuah                    | Indonesia                                    |
|  539 | Roshelle Masedon         | 1994 | Hova                      | Sweden                                       |
|  540 | Wildon Jugging           | 2008 | Jacksonville              | United States                                |
|  541 | Barnebas Romei           | 2006 | Tianjin                   | China                                        |
|  542 | Celina Pulfer            | 1995 | Progreso                  | Peru                                         |
|  543 | Domeniga Wreight         | 2008 | Duwayr Rasl─ün            | Syria                                        |
|  544 | Sydelle Twiname          | 2005 | Huayllabamba              | Peru                                         |
|  545 | Shea Greson              | 2007 | Chotcza                   | Poland                                       |
|  546 | Britteny McPike          | 1994 | Al Qurß╕⌐                 | Yemen                                        |
|  547 | Colas Devereux           | 1988 | Daping                    | China                                        |
|  548 | Jamima Bradane           | 2009 | V├írzea                   | Portugal                                     |
|  549 | Jeremiah Brakespear      | 2005 | Mozhong                   | China                                        |
|  550 | Tamma Ibanez             | 1996 | Kal─üt-e N─üder─½         | Iran                                         |
|  551 | Mar Braitling            | 1991 | Sapele                    | Nigeria                                      |
|  552 | Haleigh Gwioneth         | 2005 | Moquegua                  | Peru                                         |
|  553 | Arturo Drinkwater        | 2002 | Osieczany                 | Poland                                       |
|  554 | Charis Tort              | 2001 | Calibishie                | Dominica                                     |
|  555 | Paule Dennerly           | 1999 | Kyaiklat                  | Myanmar                                      |
|  556 | Karon Ibbett             | 1987 | Karpushikha               | Russia                                       |
|  557 | Louie Ohm                | 2004 | ß╕¿─üfiz╠º Moghul         | Afghanistan                                  |
|  558 | Mahmud Ellse             | 2012 | ├ërd                      | Hungary                                      |
|  559 | Celinda Anmore           | 1994 | Padre Nabeto              | Portugal                                     |
|  560 | Cinda Izhakov            | 2005 | Bhalil                    | Morocco                                      |
|  561 | Margalit Duligall        | 2003 | Ikoma                     | Japan                                        |
|  562 | Orran Alliberton         | 2006 | Aß╕æ ß╕ÉilΓÇÿ             | Yemen                                        |
|  563 | Isa Snellman             | 1986 | Bouca                     | Central African Republic                     |
|  564 | Clevey Tomasini          | 1995 | B├¡lovice                 | Czech Republic                               |
|  565 | Eula Zuker               | 1995 | Bahir Dar                 | Ethiopia                                     |
|  566 | Meggy Rasp               | 2011 | Burgas                    | Bulgaria                                     |
|  567 | Carver Benardet          | 1997 | Durham                    | United States                                |
|  568 | Evonne Baswall           | 2001 | Belene                    | Bulgaria                                     |
|  569 | Rickey Birks             | 2003 | Tabua├ºo                  | Portugal                                     |
|  570 | Audrie Spratt            | 2006 | F├⌐res                    | Greece                                       |
|  571 | Carleen Covotti          | 2009 | Anda                      | Philippines                                  |
|  572 | Catharina Smethurst      | 2007 | Manay                     | Philippines                                  |
|  573 | Conrado Jodrelle         | 2008 | Coolock                   | Ireland                                      |
|  574 | Merrill Heisham          | 1995 | Sharan                    | Russia                                       |
|  575 | Amanda Moorton           | 2006 | Ketovo                    | Russia                                       |
|  576 | Roseann Smullin          | 1985 | Jiangdianzi               | China                                        |
|  577 | Kissee Ronchka           | 2009 | Curridabat                | Costa Rica                                   |
|  578 | Darleen Carnelley        | 2006 | Santa Maria               | Philippines                                  |
|  579 | Junette Maben            | 2003 | Dziadkowice               | Poland                                       |
|  580 | Rikki Bohlsen            | 1989 | Cibunar                   | Indonesia                                    |
|  581 | Dan Cavilla              | 1995 | Mora                      | Sweden                                       |
|  582 | Porter Kissell           | 2011 | Khorixas                  | Namibia                                      |
|  583 | Shea Van Giffen          | 2012 | Syc├│w                    | Poland                                       |
|  584 | Kalle Perren             | 2004 | Solnechnyy                | Russia                                       |
|  585 | Shurwood Alban           | 2001 | Villa Nueva               | Honduras                                     |
|  586 | Deeann Syplus            | 2011 | Kal─üt-e N─üder─½         | Iran                                         |
|  587 | Beverie Tapenden         | 1998 | Dallas                    | United States                                |
|  588 | Ardyth Cleator           | 2002 | Guxi                      | China                                        |
|  589 | Patricio Sainsbury-Brown | 1994 | Varva                     | Ukraine                                      |
|  590 | Dawna Papierz            | 1987 | Carhuamayo                | Peru                                         |
|  591 | Danielle Enden           | 1999 | Ridder                    | Kazakhstan                                   |
|  592 | Dollie de Najera         | 2003 | Phoenix                   | United States                                |
|  593 | Royall Saffin            | 1990 | Doln├¡ ─îernilov          | Czech Republic                               |
|  594 | Annabelle Byres          | 2003 | Lom Sak                   | Thailand                                     |
|  595 | Lurline Adolphine        | 1984 | Sh─ühpur                  | Pakistan                                     |
|  596 | Jolynn Edess             | 2009 | Chengzhong                | China                                        |
|  597 | Gabriel Crannage         | 2006 | Ambato Boeny              | Madagascar                                   |
|  598 | Adan Spedding            | 2012 | Gucheng                   | China                                        |
|  599 | Missie Wogan             | 1996 | Sakhn─½n                  | Israel                                       |
|  600 | Becca Amos               | 1993 | Cassanayan                | Philippines                                  |
|  601 | Emmi Melpuss             | 2002 | Yifaquan                  | China                                        |
|  602 | Gwenette Element         | 2003 | Saint-Joseph-de-Coleraine | Canada                                       |
|  603 | Randy Rodmell            | 1994 | Lingsar                   | Indonesia                                    |
|  604 | Leslie Minet             | 2005 | Kota Kinabalu             | Malaysia                                     |
|  605 | Kaja Wesson              | 2011 | Madrid                    | Spain                                        |
|  606 | Vincenz Sponton          | 1996 | Osilnica                  | Slovenia                                     |
|  607 | Ellie Albisser           | 2006 | Jembangan                 | Indonesia                                    |
|  608 | Roger Mallindine         | 1986 | Regimin                   | Poland                                       |
|  609 | Lucienne Mathivet        | 1989 | ß╕¿ab─übah                | Yemen                                        |
|  610 | Titos Vasilenko          | 2008 | Ilio├║poli                | Greece                                       |
|  611 | Dasya Lindsley           | 2008 | Milwaukee                 | United States                                |
|  612 | Griffin Gaywood          | 2004 | Kobelyaky                 | Ukraine                                      |
|  613 | Salomo Costin            | 1991 | Randusari                 | Indonesia                                    |
|  614 | Redford Cuseck           | 1992 | New Agutaya               | Philippines                                  |
|  615 | Dudley Hanmer            | 1993 | Chaumont                  | France                                       |
|  616 | Valle Cisson             | 1999 | Fulin                     | China                                        |
|  617 | Wendy Sneddon            | 2008 | Talawi                    | Indonesia                                    |
|  618 | Lee Budding              | 1988 | Antony                    | France                                       |
|  619 | Oliver Yackiminie        | 2004 | Caicara                   | Venezuela                                    |
|  620 | Emmet Bool               | 2012 | Cilongkrang               | Indonesia                                    |
|  621 | Augustine Farans         | 1986 | Paris 12                  | France                                       |
|  622 | Clem Pleasaunce          | 1988 | Hushan                    | China                                        |
|  623 | Halsey Van Arsdalen      | 1988 | Chengjiang                | China                                        |
|  624 | Kassey Bond              | 1987 | Tamel                     | Portugal                                     |
|  625 | Bartholomeo Mirfin       | 2004 | MuzayriΓÇÿ                | United Arab Emirates                         |
|  626 | Dael McGifford           | 1997 | Delaware                  | Canada                                       |
|  627 | Rikki Gemelli            | 1998 | UstΓÇÖ-Kalmanka           | Russia                                       |
|  628 | Eddi Blesli              | 1984 | Mitaka-shi                | Japan                                        |
|  629 | Pattin Fortye            | 2008 | Takefu                    | Japan                                        |
|  630 | Maridel Willingam        | 1989 | Xiangqiao                 | China                                        |
|  631 | Arleen Kennard           | 1998 | Namangan Shahri           | Uzbekistan                                   |
|  632 | Belicia Dumphy           | 1992 | Shamva                    | Zimbabwe                                     |
|  633 | Mab Hessel               | 2013 | Banag                     | Philippines                                  |
|  634 | Bord Tregale             | 2003 | Bagansiapiapi             | Indonesia                                    |
|  635 | Nelli Donoghue           | 1994 | Kedian                    | China                                        |
|  636 | Ajay Palfrie             | 1993 | Norrt├ñlje                | Sweden                                       |
|  637 | Wait Penkethman          | 1984 | Sena                      | Thailand                                     |
|  638 | Katusha Jouhan           | 1992 | Zhendu                    | China                                        |
|  639 | Finley Dottridge         | 2004 | Mont-Joli                 | Canada                                       |
|  640 | Jandy Bulley             | 2000 | Tanahmerah                | Indonesia                                    |
|  641 | Theresina Fallen         | 2009 | Yermolino                 | Russia                                       |
|  642 | Englebert Blaker         | 2005 | Tandou                    | China                                        |
|  643 | Milzie Southouse         | 2010 | Shtip                     | Macedonia                                    |
|  644 | Neely Banasevich         | 2012 | Kumla                     | Sweden                                       |
|  645 | Xaviera Cruxton          | 2008 | Cholpon-Ata               | Kyrgyzstan                                   |
|  646 | Cass Wills               | 1997 | Pengilon                  | Indonesia                                    |
|  647 | Allx Rugge               | 2002 | Rive-de-Gier              | France                                       |
|  648 | Demetria Trenchard       | 1986 | Iparia                    | Peru                                         |
|  649 | Denney Washington        | 2007 | Lubochnia                 | Poland                                       |
|  650 | Yorke Duferie            | 1995 | GaoΓÇÖan                  | China                                        |
|  651 | Susanne Lympenie         | 1985 | Targowisko                | Poland                                       |
|  652 | Cherrita Kington         | 1989 | J─½ma                     | Ethiopia                                     |
|  653 | Farleigh Bisset          | 2001 | Mankono                   | Ivory Coast                                  |
|  654 | Cornelia Boni            | 2009 | Chapec├│                  | Brazil                                       |
|  655 | Dudley Dalrymple         | 1989 | Nankengzi                 | China                                        |
|  656 | Lindsay Abrami           | 2000 | Novaya Mayna              | Russia                                       |
|  657 | Clevie Winear            | 1996 | Twork├│w                  | Poland                                       |
|  658 | Tripp Ericsson           | 1992 | Yevpatoriya               | Ukraine                                      |
|  659 | Eveline Dytham           | 2012 | San Miguel                | Philippines                                  |
|  660 | Blakeley Proom           | 2009 | Mund├úo                   | Portugal                                     |
|  661 | Georgia Brunet           | 2006 | Mabini                    | Philippines                                  |
|  662 | Scotty Stallion          | 2006 | Curug                     | Indonesia                                    |
|  663 | Mareah Douris            | 2004 | Newark                    | United States                                |
|  664 | Deck Domeny              | 2005 | Agadez                    | Niger                                        |
|  665 | Uriah Ferrarin           | 2009 | Trondheim                 | Norway                                       |
|  666 | Meghann Stitch           | 2011 | Chonchi                   | Chile                                        |
|  667 | Sylvia Gowar             | 2009 | Balungkopi                | Indonesia                                    |
|  668 | Yoshi Kahn               | 2002 | SokolΓÇÖskoye             | Russia                                       |
|  669 | Selinda Mytton           | 1984 | Roodepoort                | South Africa                                 |
|  670 | Avie Lorimer             | 2008 | Shencang                  | China                                        |
|  671 | Karel Cardis             | 2006 | Mingora                   | Pakistan                                     |
|  672 | Klemens McTrustey        | 2008 | Hatton                    | Sri Lanka                                    |
|  673 | Amalia Bowstead          | 2010 | Shouzhan                  | China                                        |
|  674 | Stanislaw Tomasi         | 2009 | Taochuan                  | China                                        |
|  675 | Melanie Laverock         | 2009 | Redondos                  | Portugal                                     |
|  676 | Dimitry Stockhill        | 2006 | Sighnaghi                 | Georgia                                      |
|  677 | Vevay Laxston            | 1986 | Al Mughayyir              | Palestinian Territory                        |
|  678 | Frank Buchanan           | 2010 | Shiban                    | China                                        |
|  679 | Darcee Neary             | 1994 | Haicheng                  | China                                        |
|  680 | Babara Jarrold           | 2012 | Madrid                    | Colombia                                     |
|  681 | Jim Barz                 | 2004 | Yarabamba                 | Peru                                         |
|  682 | Peter Greene             | 2011 | Yuscar├ín                 | Honduras                                     |
|  683 | Katina Stewart           | 2011 | Baoji                     | China                                        |
|  684 | Hettie Pearton           | 2002 | Alak                      | Indonesia                                    |
|  685 | Netta Klasing            | 2009 | Nanqiao                   | China                                        |
|  686 | Reid Strelitzki          | 1983 | Guintubhan                | Philippines                                  |
|  687 | Gardiner Todeo           | 2000 | San Jer├│nimo             | Peru                                         |
|  688 | Susi Wrettum             | 1992 | Vangaindrano              | Madagascar                                   |
|  689 | Gerda McCaster           | 2010 | Ermelo                    | South Africa                                 |
|  690 | Alyss Mauser             | 2003 | Penha Longa               | Portugal                                     |
|  691 | Austin Tylor             | 1989 | Anjani Barat              | Indonesia                                    |
|  692 | Brenden Betchley         | 2001 | Adassil                   | Morocco                                      |
|  693 | Laurence Incogna         | 2007 | Megal├│poli               | Greece                                       |
|  694 | Cinda Masseo             | 1994 | Guangshun                 | China                                        |
|  695 | Gabbie Pointer           | 2002 | Kansas City               | United States                                |
|  696 | Tedra Dehmel             | 2006 | Maganha                   | Portugal                                     |
|  697 | Pryce Boatswain          | 1993 | Tokmok                    | Kyrgyzstan                                   |
|  698 | Mord O'Sirin             | 2007 | Sungaigerong              | Indonesia                                    |
|  699 | Eartha Riddiough         | 2006 | Maastricht                | Netherlands                                  |
|  700 | Aeriela Duffan           | 2002 | Sartana                   | Ukraine                                      |
|  701 | Maryl Major              | 2004 | Ignacio Zaragoza          | Mexico                                       |
|  702 | Ronny Hebbs              | 1992 | Beitan                    | China                                        |
|  703 | Torre Burness            | 1989 | Zyuzino                   | Russia                                       |
|  704 | Tom Speak                | 1993 | Beya                      | Russia                                       |
|  705 | Merell Hindge            | 2007 | Fredrikstad               | Norway                                       |
|  706 | Sande Maryet             | 2007 | Faq─½rw─üli               | Pakistan                                     |
|  707 | Gustaf Reinhardt         | 1998 | Mukayr─üs                 | Yemen                                        |
|  708 | Guthrey Tarbett          | 1969 | New York City             | United States                                |
|  709 | Vilma Laurisch           | 2000 | Al Qaryatayn              | Syria                                        |
|  710 | Aubrie Bagenal           | 2009 | Richmond                  | United States                                |
|  711 | Dulcine Threadgall       | 2001 | Kivsharivka               | Ukraine                                      |
|  712 | Adorne Clethro           | 2001 | Putrajaya                 | Malaysia                                     |
|  713 | Chastity Youell          | 2006 | Atlanta                   | United States                                |
|  714 | Sargent Meardon          | 1998 | Piterka                   | Russia                                       |
|  715 | Tamra Jefferies          | 2012 | Muqui                     | Peru                                         |
|  716 | Everett Fritchley        | 2010 | Uni├│n                    | Paraguay                                     |
|  717 | Ezekiel Shortall         | 2010 | Shah Alam                 | Malaysia                                     |
|  718 | Frayda Poundsford        | 2011 | Enshi                     | China                                        |
|  719 | Man Cullinan             | 2009 | Agago                     | Uganda                                       |
|  720 | Averell Amorts           | 2007 | Palpal├í                  | Argentina                                    |
|  721 | Sherline Beniesh         | 1973 | Tacuat├¡                  | Paraguay                                     |
|  722 | Franklyn Thickins        | 1999 | Lawrenceville             | United States                                |
|  723 | Perri Ashwood            | 2010 | Penanggungan              | Indonesia                                    |
|  724 | Bette Strange            | 2007 | Zinder                    | Niger                                        |
|  725 | Olympie Densham          | 1996 | Marinilla                 | Colombia                                     |
|  726 | Ame Hanscome             | 2012 | Guanting                  | China                                        |
|  727 | Ariel Ickowics           | 2007 | Rozivka                   | Ukraine                                      |
|  728 | Benoit Mirfin            | 1996 | KrasnokutsΓÇÖk            | Ukraine                                      |
|  729 | Trista Cattow            | 2009 | Zerok-Alakadari           | Afghanistan                                  |
|  730 | Brant Baurerich          | 2008 | Fundaci├│n                | Dominican Republic                           |
|  731 | Les Kayzer               | 2009 | Nakhon Pathom             | Thailand                                     |
|  732 | Kathryne Pippin          | 1994 | Thß╗ï Trß║Ñn Ngß╗ìc Lß║╖c | Vietnam                                      |
|  733 | Linus Storek             | 2006 | Newark                    | United States                                |
|  734 | Mariana Orum             | 1992 | Perpignan                 | France                                       |
|  735 | Yelena Strutley          | 2010 | Lumatil                   | Philippines                                  |
|  736 | Dorris Priden            | 2002 | Qar─üwat Ban─½ Zayd       | Palestinian Territory                        |
|  737 | Hagan Lummus             | 2002 | Sari                      | Iran                                         |
|  738 | Camellia Shillabear      | 1994 | Kobyl├¡                   | Czech Republic                               |
|  739 | Morna Spileman           | 1973 | Schroeder                 | Brazil                                       |
|  740 | Alyssa McAuley           | 1989 | Zhugentan                 | China                                        |
|  741 | Peterus Heindl           | 1996 | Valpara├¡so               | Chile                                        |
|  742 | Kipper Tommasi           | 2004 | Honglai                   | China                                        |
|  743 | Lee Stigger              | 1992 | Diva─ìa                   | Slovenia                                     |
|  744 | Phillip Batten           | 1991 | Teminabuan                | Indonesia                                    |
|  745 | Irene Crosthwaite        | 2005 | Piskavica                 | Bosnia and Herzegovina                       |
|  746 | Loleta Gilliver          | 2008 | Umabay                    | Philippines                                  |
|  747 | Christian Wemyss         | 2005 | Severodvinsk              | Russia                                       |
|  748 | Whitaker Ormston         | 2000 | Rutul                     | Russia                                       |
|  749 | Albrecht Keemer          | 2002 | Casuguran                 | Philippines                                  |
|  750 | Cory Arbuckel            | 2004 | Nov├╜ Kn├¡n               | Czech Republic                               |
|  751 | Steffen MacAndrew        | 2011 | Castrovirreyna            | Peru                                         |
|  752 | Frederique Dellenbrook   | 1996 | Severomorsk               | Russia                                       |
|  753 | Liv Worsnop              | 1999 | Dao                       | Philippines                                  |
|  754 | Donny Sansome            | 2007 | Richard-Toll              | Senegal                                      |
|  755 | Izak Scorah              | 2007 | Ferraz de Vasconcelos     | Brazil                                       |
|  756 | Martyn Breche            | 2007 | Devitsa                   | Russia                                       |
|  757 | Glory Corwin             | 2010 | Landskrona                | Sweden                                       |
|  758 | Rolando Bunning          | 1991 | ┼ápi┼íi─ç-Bukovica        | Croatia                                      |
|  759 | Agathe Tolle             | 2006 | Tongjing                  | China                                        |
|  760 | Elwood Dammarell         | 1995 | Protecci├│n               | Honduras                                     |
|  761 | Brandy Nanuccioi         | 1983 | Jard├¡n Am├⌐rica          | Argentina                                    |
|  762 | Selma Oulett             | 1992 | Pilawa                    | Poland                                       |
|  763 | Far Aldrick              | 1996 | Lidong                    | China                                        |
|  764 | Tabb De Laspee           | 1989 | Rozvadov                  | Ukraine                                      |
|  765 | Bridget Duquesnay        | 1997 | Klerksdorp                | South Africa                                 |
|  766 | Ravid Muro               | 2008 | Kinna                     | Sweden                                       |
|  767 | Vannie Kordes            | 2010 | Pavlohrad                 | Ukraine                                      |
|  768 | Aube Sales               | 2010 | Yaroslavskiy              | Russia                                       |
|  769 | Fitzgerald Kinastan      | 1993 | Oenaik                    | Indonesia                                    |
|  770 | Nolan Richardon          | 2000 | Tiedonglu                 | China                                        |
|  771 | Tod Swyne                | 1994 | Velk├╜ T├╜nec             | Czech Republic                               |
|  772 | Donal Stoile             | 2005 | Timiryazevskiy            | Russia                                       |
|  773 | Rene Healing             | 1994 | Hayes                     | Jamaica                                      |
|  774 | Lin Simmig               | 2003 | Sainte-Martine            | Canada                                       |
|  775 | Mord Threadgill          | 2009 | Malikisi                  | Kenya                                        |
|  776 | Merill Shadrack          | 1985 | Suzaka                    | Japan                                        |
|  777 | Devora Baughen           | 1997 | Sukamahi Satu             | Indonesia                                    |
|  778 | Ruggiero Hilling         | 2000 | Vy┼íkov                   | Czech Republic                               |
|  779 | Minor Prettjohn          | 2002 | Cachoeiro de Itapemirim   | Brazil                                       |
|  780 | Cyrille Gamlen           | 1999 | Limatambo                 | Peru                                         |
|  781 | Norman Le Houx           | 1994 | Murtajih                  | Indonesia                                    |
|  782 | Karyl Benedito           | 2006 | Buraen                    | Indonesia                                    |
|  783 | Agata Stammer            | 2008 | VilΓÇÖnyansΓÇÖk           | Ukraine                                      |
|  784 | Irena Brunetti           | 2008 | Aksakovo                  | Bulgaria                                     |
|  785 | Tailor Casado            | 1999 | Lyon                      | France                                       |
|  786 | Ellary Ruzek             | 1989 | Solidaridad               | Mexico                                       |
|  787 | Tatiana Cliffe           | 2006 | Bella Vista               | Paraguay                                     |
|  788 | Arie Chantree            | 1993 | Mahuta                    | Nigeria                                      |
|  789 | Georgie Ganderton        | 2000 | Sadao                     | Thailand                                     |
|  790 | Leone Blanning           | 2008 | Banyuresmi                | Indonesia                                    |
|  791 | Ferne Daud               | 2000 | Dejen                     | Ethiopia                                     |
|  792 | Ileane MacPeice          | 1992 | Volovets                  | Ukraine                                      |
|  793 | Adel Powling             | 1996 | Sumberagung               | Indonesia                                    |
|  794 | Lewiss Platfoot          | 2009 | Zhaoyuan                  | China                                        |
|  795 | Ambrose Simco            | 1985 | Sanjie                    | China                                        |
|  796 | Celestina Petschel       | 2002 | XinΓÇÖan                  | China                                        |
|  797 | Skipp Nisot              | 2009 | Novyy Karachay            | Russia                                       |
|  798 | Lauren Hansill           | 1987 | Mamurras                  | Albania                                      |
|  799 | Yvonne Donhardt          | 2000 | Miejsce Piastowe          | Poland                                       |
|  800 | Arline Mintoft           | 1992 | Dimbokro                  | Ivory Coast                                  |
|  801 | Lena Palphramand         | 2008 | Pu┼äsk                    | Poland                                       |
|  802 | Elayne Ousley            | 1990 | Merke                     | Kazakhstan                                   |
|  803 | Gaultiero Koppes         | 2005 | Xiliu                     | China                                        |
|  804 | Lindsay Motto            | 1998 | Komyshnya                 | Ukraine                                      |
|  805 | Charity Livingstone      | 2000 | Xinminxiang               | China                                        |
|  806 | Stanly Rylstone          | 2001 | Abilay                    | Philippines                                  |
|  807 | Egor Mussett             | 1984 | Pho Si Suwan              | Thailand                                     |
|  808 | Arleyne O'Hannen         | 1992 | Kadubadak                 | Indonesia                                    |
|  809 | Nixie Grangier           | 2009 | Cimuncang                 | Indonesia                                    |
|  810 | Hermon Scotford          | 2005 | Gritsovskiy               | Russia                                       |
|  811 | Jedediah Arnaldo         | 1986 | Changling                 | China                                        |
|  812 | Manya Kemmey             | 2000 | Purwodadi                 | Indonesia                                    |
|  813 | Thurstan Wastling        | 1993 | Saint-Louis du Nord       | Haiti                                        |
|  814 | Jasmina Puttock          | 2004 | Casal                     | Portugal                                     |
|  815 | Coretta Doxsey           | 2009 | R├╢nninge                 | Sweden                                       |
|  816 | Diann Grey               | 1997 | Paraiso                   | Philippines                                  |
|  817 | Christos Butterly        | 2002 | Shuiyin                   | China                                        |
|  818 | Palmer Monteaux          | 1999 | Ban├¡                     | Dominican Republic                           |
|  819 | Corby Tomasino           | 2005 | Sanzhou                   | China                                        |
|  820 | Pierce Goudard           | 1997 | Arue                      | French Polynesia                             |
|  821 | Madella Kynton           | 2006 | Bulembu                   | Swaziland                                    |
|  822 | Gabbi Wyldbore           | 1962 | Santo Domingo             | Nicaragua                                    |
|  823 | Margit Hakewell          | 2001 | KhoronkΓÇÖ                | Armenia                                      |
|  824 | Isak Coe                 | 1995 | Longyuanba                | China                                        |
|  825 | Erich Scholey            | 1998 | Kultayevo                 | Russia                                       |
|  826 | Sandra Stutely           | 1999 | Camp Diable               | Mauritius                                    |
|  827 | Bastian Hargess          | 2000 | Hispania                  | Colombia                                     |
|  828 | Glennis Rich             | 1998 | Reston                    | United States                                |
|  829 | Rafe Pritchard           | 1967 | C├írdenas                 | Cuba                                         |
|  830 | Hamil Cockett            | 2004 | KozeletsΓÇÖ               | Ukraine                                      |
|  831 | Welsh Hanscome           | 2010 | Pasadena                  | United States                                |
|  832 | Lari Jones               | 2012 | New Orleans               | United States                                |
|  833 | Christie Trebbett        | 2003 | Tuy Ph╞░╞í╠üc             | Vietnam                                      |
|  834 | Sarita Crawley           | 2002 | Tomobe                    | Japan                                        |
|  835 | Lanette Busek            | 2012 | Ivouani                   | Comoros                                      |
|  836 | Jane Monteith            | 2008 | Reserva                   | Brazil                                       |
|  837 | Arabela Washtell         | 1993 | Alegre                    | Brazil                                       |
|  838 | Maxi Myner               | 2009 | Tsalka                    | Georgia                                      |
|  839 | Alwyn Finden             | 2001 | Changshou                 | China                                        |
|  840 | Lauri Zanicchi           | 1999 | La Reforma                | Mexico                                       |
|  841 | Fabian Amphlett          | 2002 | Milaor                    | Philippines                                  |
|  842 | Andrei Buggs             | 1999 | Fuyu                      | China                                        |
|  843 | Ermin Garden             | 1993 | Wangbuzhuang              | China                                        |
|  844 | Devland Boxe             | 1992 | Naze                      | Japan                                        |
|  845 | Norry Georgiev           | 2011 | Svenljunga                | Sweden                                       |
|  846 | Querida Screaton         | 2001 | San Vicente               | Philippines                                  |
|  847 | Breena Chateau           | 2010 | ├ügios Athan├ísios        | Greece                                       |
|  848 | Hart Maddox              | 2011 | Cermee                    | Indonesia                                    |
|  849 | Alec Sobieski            | 1992 | Shangxing                 | China                                        |
|  850 | Marguerite Ricson        | 2009 | G├╢teborg                 | Sweden                                       |
|  851 | Susie Tschersich         | 1989 | Bilo                      | Indonesia                                    |
|  852 | Dede Scotney             | 2004 | Rego                      | Portugal                                     |
|  853 | Merry Mulroy             | 2011 | Reforma                   | Mexico                                       |
|  854 | Annalee Nealey           | 1982 | Lebahseri                 | Indonesia                                    |
|  855 | Georgeanna McEnteggart   | 1989 | N├«mes                    | France                                       |
|  856 | Allix Kassman            | 1993 | Olleros                   | Peru                                         |
|  857 | Timoteo Fylan            | 2011 | Haodian                   | China                                        |
|  858 | Kimberly Autie           | 2009 | La Rochelle               | France                                       |
|  859 | Berty Vanetti            | 2000 | Laizhou                   | China                                        |
|  860 | Florida Gariff           | 2000 | Kiambu                    | Kenya                                        |
|  861 | Lucien Taylerson         | 1965 | Tlu─ìn├í                  | Czech Republic                               |
|  862 | Liam Corbally            | 2009 | Liushui                   | China                                        |
|  863 | Kassia Del Monte         | 2002 | Changling                 | China                                        |
|  864 | Mariya Corradeschi       | 2007 | Guanting                  | China                                        |
|  865 | Maren Wackett            | 2007 | Yuscar├ín                 | Honduras                                     |
|  866 | Ingrim Heindl            | 1992 | Kanye                     | Botswana                                     |
|  867 | Rozalin Whithalgh        | 1998 | Dingcheng                 | China                                        |
|  868 | Ardisj Willman           | 2002 | Trincomalee               | Sri Lanka                                    |
|  869 | Thurston Mathewson       | 2000 | Zaoxi                     | China                                        |
|  870 | Barton Uc                | 2009 | Toukh                     | Egypt                                        |
|  871 | Dud Stainbridge          | 1969 | Maumbawa                  | Indonesia                                    |
|  872 | Joann Winsborrow         | 2000 | Zhongfang                 | China                                        |
|  873 | Huey Locarno             | 2001 | Wlingi                    | Indonesia                                    |
|  874 | Claudelle Andrusov       | 1999 | Wenxing                   | China                                        |
|  875 | Olga Holby               | 2008 | Dordrecht                 | Netherlands                                  |
|  876 | Dael Tillyer             | 1994 | La Seyne-sur-Mer          | France                                       |
|  877 | Berget Swadling          | 2003 | ShinΓÇÖichi               | Japan                                        |
|  878 | Zack Gutowski            | 1995 | Kashihara                 | Japan                                        |
|  879 | Lulita Romayne           | 2012 | Jalgung                   | Indonesia                                    |
|  880 | Roberto Heath            | 1999 | Bu├┤n Trß║Ñp              | Vietnam                                      |
|  881 | Reilly Dolohunty         | 1989 | B├⌐labo                   | Cameroon                                     |
|  882 | Gray Anshell             | 2001 | ΓÇÿAl─½ al Gharb─½        | Iraq                                         |
|  883 | Bellanca Wittier         | 1998 | San Lorenzo               | Guatemala                                    |
|  884 | Melantha Schulz          | 2006 | R├¡o Ceballos             | Argentina                                    |
|  885 | Kimball Pevreal          | 1992 | Mouz├íki                  | Greece                                       |
|  886 | Austina Ingliby          | 2007 | PtghunkΓÇÖ                | Armenia                                      |
|  887 | Helsa Yate               | 2005 | Balading                  | Philippines                                  |
|  888 | Free Scrivenor           | 2005 | Alta Gracia               | Argentina                                    |
|  889 | Roselia Townsend         | 1996 | Selouane                  | Morocco                                      |
|  890 | Karoly Hurry             | 2006 | Bordeaux                  | France                                       |
|  891 | Joella Shelmardine       | 2012 | Gaofeng                   | China                                        |
|  892 | Evelin Brinkler          | 1990 | Heiiyugou                 | China                                        |
|  893 | Leeanne Studders         | 1992 | Artemisa                  | Cuba                                         |
|  894 | Sherie Creech            | 2006 | Chipoka                   | Malawi                                       |
|  895 | Andeee Boatwright        | 1998 | Lysekil                   | Sweden                                       |
|  896 | Didi Matyas              | 2011 | Yangong                   | China                                        |
|  897 | Lonnie Kyles             | 2007 | Midrand                   | South Africa                                 |
|  898 | Noland Corrett           | 1992 | Stykkish├│lmur            | Iceland                                      |
|  899 | Lucretia Daglish         | 1995 | Petropavlovsk             | Kazakhstan                                   |
|  900 | Isis Oxburgh             | 1990 | Iwakura                   | Japan                                        |
|  901 | Patricio Ledgley         | 2009 | Somdet                    | Thailand                                     |
|  902 | Kamilah Buttress         | 1997 | Quanling                  | China                                        |
|  903 | Caren Luttgert           | 2006 | Annino                    | Russia                                       |
|  904 | Helena Molloy            | 2004 | Rawaapu                   | Indonesia                                    |
|  905 | Torrey Gilphillan        | 1999 | N├¡kaia                   | Greece                                       |
|  906 | Koralle Raddon           | 2012 | Fojo                      | Portugal                                     |
|  907 | Darlene Dallman          | 1997 | Zhezqazghan               | Kazakhstan                                   |
|  908 | Audrey Shekle            | 1987 | Budapest                  | Hungary                                      |
|  909 | Sibby Ferruzzi           | 1990 | Shoushan                  | China                                        |
|  910 | Colby Cunnell            | 2003 | Asahbadung                | Indonesia                                    |
|  911 | Axel Throughton          | 1991 | Verbilki                  | Russia                                       |
|  912 | Roslyn Domb              | 1986 | Xingbin                   | China                                        |
|  913 | Hermia Badland           | 1996 | Melfi                     | Chad                                         |
|  914 | Fionnula Alp             | 2009 | Yuandun                   | China                                        |
|  915 | Rodina Jensen            | 2008 | Chicago                   | United States                                |
|  916 | Ronnie Withams           | 2001 | PuΓÇÖer                   | China                                        |
|  917 | Shelli Ridd              | 2011 | Kolbano                   | Indonesia                                    |
|  918 | Burton MacGillivrie      | 1997 | Xianyi                    | China                                        |
|  919 | Leah Margiotta           | 2007 | Pasto                     | Colombia                                     |
|  920 | Viviana Porrett          | 1985 | Kaz                       | Russia                                       |
|  921 | Winn Eliesco             | 1989 | Changxingbao              | China                                        |
|  922 | Kristoffer Folker        | 2005 | Saint-Nazaire             | France                                       |
|  923 | Patton Peddel            | 2008 | Ma┼ƒta─ƒa                 | Azerbaijan                                   |
|  924 | Skipp Mecozzi            | 2008 | Bulakbanjar               | Indonesia                                    |
|  925 | Nollie McCosker          | 1984 | Caherconlish              | Ireland                                      |
|  926 | Schuyler Benford         | 1994 | Malamig                   | Philippines                                  |
|  927 | Shurwood Lankford        | 2005 | Lalmanirhat               | Bangladesh                                   |
|  928 | Kennan Hue               | 2011 | Comapa                    | Guatemala                                    |
|  929 | Daffie MacCaughey        | 1990 | Winong                    | Indonesia                                    |
|  930 | Brocky Klehn             | 2009 | Jatibonico                | Cuba                                         |
|  931 | Frederigo MacComiskey    | 1990 | Devon                     | Canada                                       |
|  932 | Scarlet Corteis          | 2007 | Sobradinho                | Brazil                                       |
|  933 | Lorene Milbank           | 2001 | Aeka                      | Indonesia                                    |
|  934 | Devin Aspden             | 1964 | Ivoti                     | Brazil                                       |
|  935 | Tove Huxley              | 1996 | Sokobanteng               | Indonesia                                    |
|  936 | Zitella Gauntley         | 1998 | Hebeitun                  | China                                        |
|  937 | Carrol Edwardes          | 1995 | Rumyantsevo               | Russia                                       |
|  938 | Ross Blodgett            | 2011 | Fonta├¡nhas               | Portugal                                     |
|  939 | Tuckie Brydon            | 2009 | Sopo                      | Indonesia                                    |
|  940 | Elyssa Howorth           | 2006 | Cheping                   | China                                        |
|  941 | Reggi Radenhurst         | 1996 | Ska┼éa                    | Poland                                       |
|  942 | Amble Roz                | 2003 | Seka                      | Thailand                                     |
|  943 | Ricki Nolte              | 1995 | Rathwire                  | Ireland                                      |
|  944 | Rubia Arnall             | 2004 | Ayrihuanca                | Peru                                         |
|  945 | Janine Sturdey           | 2008 | Longwy                    | France                                       |
|  946 | Opal Stefanovic          | 2009 | Trebisht-Mu├ºin├½         | Albania                                      |
|  947 | Urbanus Hanlin           | 1990 | Kansas City               | United States                                |
|  948 | Tish Hazlehurst          | 2007 | Gandi                     | Nigeria                                      |
|  949 | Ciro Jagson              | 2006 | T┼ìgane                   | Japan                                        |
|  950 | Consolata Pindar         | 1994 | Lom Sak                   | Thailand                                     |
|  951 | Jandy Schoroder          | 1993 | T─ündo Mittha Kh─ün       | Pakistan                                     |
|  952 | Caryn Fetters            | 2009 | Qiwen                     | China                                        |
|  953 | Merwyn Cadwallader       | 2008 | Minien East               | Philippines                                  |
|  954 | Minnaminnie Armin        | 2005 | Ivanteyevka               | Russia                                       |
|  955 | Uta Cuttles              | 2010 | Neebing                   | Canada                                       |
|  956 | Suki Hamshere            | 2004 | Jiujiang                  | China                                        |
|  957 | Brion Wasiel             | 1989 | Guandian                  | China                                        |
|  958 | Hilliary Foot            | 2008 | Tuofeng                   | China                                        |
|  959 | Renee Fernier            | 1999 | Villeta                   | Colombia                                     |
|  960 | Ortensia Luxon           | 2010 | Oxel├╢sund                | Sweden                                       |
|  961 | Lind Ewells              | 2001 | Boncong                   | Indonesia                                    |
|  962 | Carlee Phillippo         | 1995 | Tapada das Merc├¬s        | Portugal                                     |
|  963 | Madelene Goold           | 1995 | R├╢nninge                 | Sweden                                       |
|  964 | Gwenore Joye             | 2006 | Nova Igua├ºu              | Brazil                                       |
|  965 | Fredia Beglin            | 2001 | Lelystad                  | Netherlands                                  |
|  966 | Dee dee McCafferky       | 2003 | Xitan                     | China                                        |
|  967 | Pippy Bogey              | 2007 | Piancheng                 | China                                        |
|  968 | Cal Warriner             | 2012 | Genting                   | Indonesia                                    |
|  969 | Jerrilee Wearn           | 1993 | Montpellier               | France                                       |
|  970 | Batsheva Gipps           | 1993 | Chengdong                 | China                                        |
|  971 | Huntley Scarasbrick      | 2011 | Kuybyshevskiy Zaton       | Russia                                       |
|  972 | Carlie Pannett           | 2013 | Amado Nervo               | Mexico                                       |
|  973 | Deidre Nussen            | 1991 | Po┼╛arevac                | Serbia                                       |
|  974 | Romeo Tullett            | 2012 | Pergan                    | Indonesia                                    |
|  975 | Mahmoud Matej            | 2006 | Shizuoka-shi              | Japan                                        |
|  976 | Wallis Coleman           | 2010 | Kaloyanovo                | Bulgaria                                     |
|  977 | Adelaide Ilem            | 2013 | Bacnor East               | Philippines                                  |
|  978 | Myca Minghetti           | 2003 | Oslo                      | Norway                                       |
|  979 | Meade Battista           | 2004 | Talashkino                | Russia                                       |
|  980 | Stirling Halfacree       | 2002 | Luka nad Jihlavou         | Czech Republic                               |
|  981 | Adam Fyfield             | 2009 | Boavista                  | Portugal                                     |
|  982 | Xylia Arkley             | 1997 | Wonda                     | Indonesia                                    |
|  983 | Chaddy Ertel             | 1991 | Kuala Lumpur              | Malaysia                                     |
|  984 | Daniel Manwell           | 1971 | Komb├½si                  | Albania                                      |
|  985 | Catina Trivett           | 1998 | Kalabo                    | Zambia                                       |
|  986 | Beth Hedger              | 1998 | Portland                  | United States                                |
|  987 | Cicily Tapsfield         | 1992 | ┼Üwiecie                  | Poland                                       |
|  988 | Vally Cadlock            | 1998 | Praia da Vagueira         | Portugal                                     |
|  989 | Colas Munkton            | 1998 | Goulmima                  | Morocco                                      |
|  990 | Bart Geikie              | 1998 | Nanping                   | China                                        |
|  991 | Anatola Aldin            | 2007 | Lakkha N├½vre             | Russia                                       |
|  992 | Allx Dancey              | 2008 | Inkerman                  | Ukraine                                      |
|  993 | Kathryne Borman          | 1989 | Ovacik                    | Turkey                                       |
|  994 | Shawnee Matveichev       | 2005 | Grz─Öska                  | Poland                                       |
|  995 | Portia Tredget           | 2008 | Ashm┼½n                   | Egypt                                        |
|  996 | Louisette Banishevitz    | 2004 | Reda                      | Poland                                       |
|  997 | Meris Ropkes             | 1996 | Memphis                   | United States                                |
|  998 | Bailey Newlyn            | 1999 | Shah Alam                 | Malaysia                                     |
|  999 | Mary Baldetti            | 2003 | Mirnyy                    | Russia                                       |
| 1000 | Agna Palley              | 1993 | ┼îyama                    | Japan                                        |
+------+--------------------------+------+---------------------------+----------------------------------------------+
1000 rows in set (0.012 sec)

MariaDB [latihan_mysql]> DESCRIBE orders;
+-------------+-----------+------+-----+---------------------+-------------------------------+
| Field       | Type      | Null | Key | Default             | Extra                         |
+-------------+-----------+------+-----+---------------------+-------------------------------+
| id          | int(11)   | NO   | PRI | NULL                | auto_increment                |
| customer_id | int(11)   | NO   | MUL | NULL                |                               |
| date        | timestamp | NO   |     | current_timestamp() | on update current_timestamp() |
+-------------+-----------+------+-----+---------------------+-------------------------------+
3 rows in set (0.009 sec)

MariaDB [latihan_mysql]> SET FOREIGN_KEY_CHECKS=0;
Query OK, 0 rows affected (0.012 sec)

MariaDB [latihan_mysql]> TRUNCATE TABLE orders;
Query OK, 0 rows affected (0.048 sec)

MariaDB [latihan_mysql]> SET FOREIGN_KEY_CHECKS=1;
Query OK, 0 rows affected (0.000 sec)

MariaDB [latihan_mysql]> SOURCE C:\Users\LEGION\Documents\Pengenalan Database Menggunakan MySQL\data\orders.sql
Query OK, 1 row affected, 1 warning (0.010 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.004 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.008 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.004 sec)

Query OK, 1 row affected, 1 warning (0.004 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.004 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.004 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.003 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.001 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.005 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

Query OK, 1 row affected, 1 warning (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM orders
    -> LIMIT 10;
+----+-------------+---------------------+
| id | customer_id | date                |
+----+-------------+---------------------+
|  1 |           1 | 0000-00-00 00:00:00 |
|  2 |           2 | 0000-00-00 00:00:00 |
|  3 |           3 | 0000-00-00 00:00:00 |
|  4 |           4 | 0000-00-00 00:00:00 |
|  5 |           5 | 0000-00-00 00:00:00 |
|  6 |           6 | 0000-00-00 00:00:00 |
|  7 |           7 | 0000-00-00 00:00:00 |
|  8 |           8 | 0000-00-00 00:00:00 |
|  9 |           9 | 0000-00-00 00:00:00 |
| 10 |          10 | 0000-00-00 00:00:00 |
+----+-------------+---------------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT * FROM orders
    -> CROSS JOIN customers
    -> LIMIT 10;
+----+-------------+---------------------+----+--------------+------+-------------+-----------+
| id | customer_id | date                | id | name         | age  | city        | country   |
+----+-------------+---------------------+----+--------------+------+-------------+-----------+
|  1 |           1 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  2 |           2 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  3 |           3 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  4 |           4 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  5 |           5 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  6 |           6 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  7 |           7 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  8 |           8 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
|  9 |           9 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
| 10 |          10 | 0000-00-00 00:00:00 |  1 | Case Tainton | 2008 | Karanganyar | Indonesia |
+----+-------------+---------------------+----+--------------+------+-------------+-----------+
10 rows in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> STAIGTH JOIN orders
    -> WHERE orders.customer_id = 1
    -> LIMIT = 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 10' at line 4
MariaDB [latihan_mysql]> SELECT * FROM customers
    -> STRAIGTH JOIN orders
    -> WHERE orders.customer_id = 1
    -> LIMIT = 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 10' at line 4
MariaDB [latihan_mysql]> SELECT * FROM customers
    -> STRAIGTH JOIN orders
    -> WHERE orders.customer_id = 1;
+------+--------------------------+------+---------------------------+----------------------------------------------+----+-------------+---------------------+
| id   | name                     | age  | city                      | country                                      | id | customer_id | date                |
+------+--------------------------+------+---------------------------+----------------------------------------------+----+-------------+---------------------+
|    1 | Case Tainton             | 2008 | Karanganyar               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|    2 | Pierre Chelnam           | 2007 | Kalengwa                  | Zambia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|    3 | Alphonso Kunzel          | 2002 | Cigarogol                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|    4 | Rosalie Cosson           | 2000 | Chojnice                  | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|    5 | Benedetto Girling        | 1973 | Pining                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|    6 | Susann Siccombe          | 2011 | Pagak                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|    7 | Carmel Yerborn           | 1993 | Unaizah                   | Saudi Arabia                                 |  1 |           1 | 0000-00-00 00:00:00 |
|    8 | Iago Richardeau          | 1994 | M├╝llendorf               | Luxembourg                                   |  1 |           1 | 0000-00-00 00:00:00 |
|    9 | Alene Thurman            | 2007 | Munjungan                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   10 | Ashby Ovenell            | 2006 | Ketangi                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   11 | Nananne Gilford          | 2005 | Bungabon                  | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   12 | Clementina Caldow        | 2005 | Catal├úo                  | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   13 | Zola Ingham              | 1993 | Portachuelo               | Bolivia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   14 | Dorisa Guille            | 2004 | Jayanca                   | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   15 | Lizbeth Watterson        | 1998 | Nantes                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   16 | Tabor Costigan           | 1985 | Sitovo                    | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   17 | Thurston Crannis         | 1996 | Oranmore                  | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   18 | Crichton Kinman          | 1986 | Oslo                      | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   19 | Fancy McCotter           | 2006 | Matangpayang              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   20 | Waylon Hassall           | 1967 | Ziway                     | Ethiopia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   21 | Lind Brittle             | 2006 | Kivi├╡li                  | Estonia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   22 | Binky Boater             | 1992 | Merrifield                | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|   23 | Emera Sinkin             | 2004 | Al Qadm┼½s                | Syria                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   24 | Ezra Claasen             | 2005 | Ikar                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   25 | Thia Perrins             | 1999 | Bobonan                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   26 | Curt Ravenscraft         | 2000 | Figueira Castelo Rodrigo  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   27 | Zea Luther               | 2008 | Lijie                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   28 | Tally Arzu               | 1995 | Aquidauana                | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   29 | Hew Dewicke              | 1987 | Ar Rumaythah              | Iraq                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   30 | Nina Oultram             | 1994 | Brni┼ít─¢                 | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|   31 | Alie Kirkup              | 1994 | Taldan                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   32 | Della Vanelli            | 1995 | Xinchengzi                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   33 | Lexine De Angelo         | 2008 | Yongle                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   34 | Lonni McCaw              | 2003 | Pagnag                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   35 | Linda Keneleyside        | 1999 | Manghit                   | Uzbekistan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|   36 | Mamie Skilbeck           | 2008 | Kifr─½                    | Iraq                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   37 | Mag Kruger               | 2004 | Kne┼╛ica                  | Bosnia and Herzegovina                       |  1 |           1 | 0000-00-00 00:00:00 |
|   38 | Nye Morfett              | 2000 | Bromma                    | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   39 | Kaylil Arnaudot          | 2005 | Campoalegre               | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   40 | Alain Emblow             | 2008 | Datang                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   41 | Stephana Ivashin         | 1998 | Vigo                      | Spain                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   42 | Jenica Satterfitt        | 2005 | Centro Habana             | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   43 | Carney Duffill           | 1993 | B┼é─Öd├│w                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   44 | Leisha Durrans           | 1994 | Khafizan                  | Afghanistan                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   45 | Corabel Deval            | 1994 | Longyearbyen              | Svalbard and Jan Mayen                       |  1 |           1 | 0000-00-00 00:00:00 |
|   46 | Simonette Delcastel      | 1990 | Ume├Ñ                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   47 | Babara Scoggins          | 2004 | Biliri                    | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   48 | Glenine Gilkison         | 2002 | ├ìquira                   | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   49 | Hendrika Harbert         | 2012 | J├ñppil├ñ                 | Finland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   50 | Maddie Clulow            | 2011 | Venda Nova                | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   51 | Sibylla Garter           | 1992 | Ganding                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   52 | Alexandro Roll           | 2004 | D├⌐dougou                 | Burkina Faso                                 |  1 |           1 | 0000-00-00 00:00:00 |
|   53 | Roselia Arnold           | 2010 | Karangtalun               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   54 | Valeria Pagan            | 1997 | Sampangan                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   55 | Mellisent Elcoate        | 2009 | Eenhana                   | Namibia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   56 | Joanie Lorek             | 2011 | Longshan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   57 | Shurlock Lambersen       | 2007 | Mengla                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   58 | Merell Ellams            | 2009 | Tatarsk                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   59 | Deane Fredi              | 1990 | Tapacocha                 | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   60 | Orlan Paula              | 2006 | Malonty                   | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|   61 | Bellina Kerley           | 2006 | Orop├⌐ndolas              | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   62 | Delmore Lyddiatt         | 1993 | Pancanagara               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   63 | Janey Gelsthorpe         | 2001 | Grytviken                 | South Georgia and the South Sandwich Islands |  1 |           1 | 0000-00-00 00:00:00 |
|   64 | Ermin Durram             | 2007 | Dingjiaqiao               | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   65 | Karim Murrells           | 2010 | Markaryd                  | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   66 | Meyer Machin             | 1999 | Doghs                     | Armenia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   67 | Karen Poel               | 1990 | Casal                     | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   68 | Belva McCambrois         | 2001 | La Ravoire                | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   69 | Astrix Boyde             | 1993 | Moulay Bouchta            | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   70 | Clem Cowland             | 1983 | Tiglauigan                | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   71 | Reba Harget              | 2008 | Pantang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   72 | Fabian Charge            | 1995 | Keyi                      | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   73 | Pembroke De Carteret     | 1998 | Kieta                     | Papua New Guinea                             |  1 |           1 | 0000-00-00 00:00:00 |
|   74 | Emmanuel Bernardini      | 1992 | Segezha                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   75 | Giorgi Solley            | 2010 | Tatou                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   76 | Hali Humburton           | 2005 | Casimiro de Abreu         | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   77 | Garrik Garvagh           | 1992 | Ban Dan                   | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   78 | Dory Brevetor            | 2000 | Boyle                     | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   79 | Staford Message          | 2009 | Nakkila                   | Finland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   80 | Barry Allkins            | 2012 | Chipaque                  | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   81 | Boyd Candie              | 1986 | Kebloran                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   82 | Donella Dahl             | 2003 | Calape                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   83 | Terrence Huitson         | 2007 | Koronganayam              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   84 | Scarlet Shewan           | 1998 | Nizw├í                    | Oman                                         |  1 |           1 | 0000-00-00 00:00:00 |
|   85 | Misty Hane               | 1992 | Kaset Sombun              | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|   86 | Ralf Gauler              | 2009 | Novyye Cher├½mushki       | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   87 | Malina Gerard            | 1994 | Chrast                    | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|   88 | Delores Ishaki           | 2004 | ByahomlΓÇÖ                | Belarus                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   89 | Norri Laherty            | 1995 | ┼îhara                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|   90 | Zorana Luciani           | 2005 | Lille                     | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   91 | Devonna Carreyette       | 2011 | San Antonio               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   92 | Cordey Castagneri        | 2009 | Concei├º├úo do Jacu├¡pe   | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|   93 | Elsy Comrie              | 2007 | Lomboy                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   94 | Scotti Goosnell          | 2011 | Yangon                    | Myanmar                                      |  1 |           1 | 0000-00-00 00:00:00 |
|   95 | Hazel Dury               | 1993 | Navotas                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|   96 | Kippie Jales             | 2005 | Macapo                    | Venezuela                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   97 | Juliette McCombe         | 2011 | Sumberejo                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   98 | La verne Akenhead        | 2008 | Kebonsari                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|   99 | Harvey Clarricoates      | 2000 | Yunji                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  100 | Broderic Balke           | 1996 | Nezv─¢stice               | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  101 | Chryste Damrell          | 1986 | Quimbaya                  | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  102 | Sabrina Havelin          | 2005 | Sons├│n                   | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  103 | Kaylyn Dugan             | 2009 | Dillenburg                | Germany                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  104 | Gisela Wike              | 1995 | Caldas das Taipas         | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  105 | Meridith Schooley        | 2009 | Khlong Yai                | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  106 | Mignonne Sindell         | 1995 | Lourido                   | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  107 | Norry Louche             | 2009 | Zall-Dardh├½              | Albania                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  108 | Vernen Mathou            | 1988 | MaΓÇÖan                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  109 | Karrie Bertl             | 1998 | Kendaruan                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  110 | Saloma Penbarthy         | 2009 | Klenak                    | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  111 | Hamilton Gascoine        | 1986 | Sokolovo                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  112 | Hedi Garralts            | 1996 | Yueyahe                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  113 | Glyn McLanachan          | 2008 | Zrenjanin                 | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  114 | Cynthia Spafford         | 2012 | Da Nang                   | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  115 | Marlane Stratiff         | 1997 | Jabonga                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  116 | Blondy Ure               | 2001 | Beidu                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  117 | Annette Leadston         | 2005 | Airmata                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  118 | Rollie Blaik             | 1997 | Hadyach                   | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  119 | Baillie Nickols          | 2006 | M─üwiyah                  | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  120 | Vale Geratasch           | 1978 | Zhangcunping              | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  121 | Dana Murr                | 2009 | Ciburial                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  122 | Maridel Gozzett          | 2011 | Manika                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  123 | Randee Chesney           | 1999 | Quimil├¡                  | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  124 | Jens Bruyet              | 2004 | Casuguran                 | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  125 | Shel Wellstood           | 2003 | Jiangchuan                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  126 | Ashil Dubock             | 1973 | Las Varas                 | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  127 | Bobbette Thunderchief    | 1995 | Boden                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  128 | Teador Ioannidis         | 2002 | Qinglin                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  129 | Orran Bartoszek          | 2009 | Gryazovets                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  130 | Yul Andreucci            | 2003 | Jinshandian               | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  131 | Early Antoshin           | 1992 | Malitubog                 | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  132 | Ewell Sawden             | 1966 | Ash Sharyah               | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  133 | Lindsey McNelis          | 2004 | Reims                     | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  134 | Bay Brunker              | 1996 | Kemij├ñrvi                | Finland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  135 | Melody Fleeman           | 2007 | Yahotyn                   | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  136 | Sybyl Dibdin             | 2010 | Novo Horizonte            | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  137 | Linus Pinchback          | 1998 | Gotputuk                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  138 | Ira Hanselman            | 2011 | Jianshe                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  139 | Berkie Groome            | 2003 | Yanqi                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  140 | Paloma Vinecombe         | 2008 | Al Ghand┼½rah             | Syria                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  141 | Brittne Ledrane          | 2002 | Huineno                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  142 | Fawnia Jeske             | 2001 | Vardablur                 | Armenia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  143 | Fannie Featherstonhaugh  | 1998 | Rebrikha                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  144 | Kathie Pullan            | 1989 | Belogorsk─½y              | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  145 | Minnie Le-Good           | 2009 | Olinda                    | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  146 | Kristofer Bardwell       | 1991 | New Orleans               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  147 | Ursula Jocelyn           | 1988 | Sauga                     | Estonia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  148 | Edy Clarey               | 1997 | Krasna                    | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  149 | Debi Dunbavin            | 2012 | Sviadnov                  | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  150 | Jeralee Bettenay         | 1998 | Rubizhne                  | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  151 | Orazio Erangey           | 2008 | Aws─½m                    | Egypt                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  152 | Ardelis Casini           | 2011 | Kru┼íevac                 | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  153 | Dimitry Maddox           | 2011 | Fenyan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  154 | Yehudi Jackways          | 2006 | Shuangxi                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  155 | Erhard Pecha             | 2007 | Heshi                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  156 | Yalonda Housecraft       | 2008 | Yamoto                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  157 | Finn Volkes              | 1998 | Zhendong                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  158 | Melessa Mathivat         | 2006 | Limanancong               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  159 | Trueman Ohms             | 2001 | Ayabaca                   | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  160 | Margarethe De La Hay     | 2007 | Novi Itebej               | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  161 | Mommy Scollard           | 2005 | Nybro                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  162 | Brit Leckenby            | 1994 | Nanjie                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  163 | Kip Bingall              | 2000 | Ostoji─çevo               | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  164 | Catherina Grinnikov      | 1998 | Huangtu                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  165 | Micky Ladel              | 1992 | Julcamarca                | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  166 | Vevay Van Der Weedenburg | 2004 | Beizhuang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  167 | Micky Lendrem            | 1996 | Tanout                    | Niger                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  168 | Arin Mussard             | 2001 | G├╢teborg                 | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  169 | Miof mela Calvie         | 1989 | Chigasaki                 | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  170 | Kinny Scogings           | 1987 | Anau                      | French Polynesia                             |  1 |           1 | 0000-00-00 00:00:00 |
|  171 | Tarra Caldecott          | 1999 | Lazaro Cardenas           | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  172 | Rudolph Craydon          | 1995 | Hecheng                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  173 | Meier Greystoke          | 2003 | Soito                     | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  174 | Isac Fettis              | 2011 | Stupsk                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  175 | Zed Timms                | 2007 | Centenario                | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  176 | Phillida Tome            | 2010 | Kieta                     | Papua New Guinea                             |  1 |           1 | 0000-00-00 00:00:00 |
|  177 | Ganny Blenkinship        | 1996 | Bonneuil-sur-Marne        | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  178 | Annissa Venus            | 1999 | Krzy┼╝an├│w               | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  179 | Tammy Rowntree           | 2010 | Vilkaviskis               | Lithuania                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  180 | Tomasina Gatenby         | 2008 | Spirit River              | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  181 | Jenelle Bodle            | 2010 | Tonggu                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  182 | Caren Barron             | 1997 | Al Miqd─üd─½yah           | Iraq                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  183 | Rollins Timlin           | 2001 | V├ñstanfj├ñrd             | Finland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  184 | Millard Mandy            | 1997 | Xinyuan                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  185 | Ajay Schoular            | 1993 | Bourg-en-Bresse           | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  186 | Pierson Tixier           | 2001 | Karangnongko              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  187 | Godfry Winspear          | 1999 | Niwiska                   | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  188 | Martelle Kummerlowe      | 2003 | GusΓÇÖ-KhrustalΓÇÖnyy     | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  189 | Miguela Joint            | 2005 | Sidomakmur                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  190 | Heinrik O'Neill          | 2012 | La Cruz                   | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  191 | Emily Mulhall            | 2006 | UstΓÇÖ-Ulagan             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  192 | Costanza Risbie          | 2006 | Agua Blanca               | Guatemala                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  193 | Mirabelle Summerill      | 2010 | Simapu                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  194 | Harper Cantua            | 1993 | Lameiro                   | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  195 | Homere Pettinger         | 1994 | Lianghe                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  196 | Remington Deane          | 2012 | Sanbaishan                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  197 | Chaddy Corradini         | 2004 | Sanhe                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  198 | Trip Ferrarotti          | 1950 | B┼¡stonqalΓÇÖa            | Tajikistan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  199 | Giuseppe Semmence        | 2004 | Kru┼íevo                  | Croatia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  200 | Tiff Vokes               | 1988 | Washington                | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  201 | Naomi Klasen             | 2006 | Quanzhou                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  202 | Angelico Ellesworth      | 1997 | Niuzhuang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  203 | Binky Stoner             | 2004 | Garmeh                    | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  204 | Jonell Goldster          | 1993 | Shichuan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  205 | Salli Ybarra             | 2003 | Bayshint                  | Mongolia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  206 | Doreen Terram            | 2011 | Vanves                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  207 | Morena Rohlfs            | 2011 | Vale de Madeiros          | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  208 | Ilysa Dametti            | 1986 | Margherita                | Uganda                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  209 | Kain Kersaw              | 2008 | Don Tan                   | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  210 | Teddy Clulow             | 2009 | Marseille                 | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  211 | Pearla Gabbitus          | 2011 | ß╕¿uk┼½mat-e Sh─½nka─½    | Afghanistan                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  212 | Bastien Jime             | 2000 | Flores da Cunha           | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  213 | Faye Seiter              | 2008 | Maying                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  214 | Merlina Swatland         | 2012 | Dafeng                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  215 | Dottie Demschke          | 1995 | Mariental                 | Namibia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  216 | Dorise Burnyeat          | 2009 | Santander                 | Spain                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  217 | Almira Hooban            | 1986 | Alzamay                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  218 | Baron Bashford           | 1996 | Huddinge                  | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  219 | Randie Cupper            | 2008 | Lesnikovo                 | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  220 | Elayne Raymond           | 2007 | MikunΓÇÖ                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  221 | Merv Buckley             | 1986 | Cabannungan Second        | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  222 | Britney Redihough        | 2010 | Fontenay-sous-Bois        | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  223 | Berrie Farndale          | 1994 | Villa del Rosario         | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  224 | Flossi Vennard           | 2008 | VerkhovΓÇÖye              | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  225 | Evered Varne             | 2006 | Tha Ruea                  | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  226 | Percival Colegate        | 2011 | Nuevo Emperador           | Panama                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  227 | Edythe Brashaw           | 1996 | Baume-les-Dames           | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  228 | Gusti Barajas            | 1992 | Carcassonne               | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  229 | Eberto Leibold           | 2006 | ΓÇÿ┼¬r─½f                 | Palestinian Territory                        |  1 |           1 | 0000-00-00 00:00:00 |
|  230 | Alfred Andrysek          | 2012 | Mokopane                  | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  231 | Tyler Iggulden           | 2005 | Tukuyu                    | Tanzania                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  232 | Gertrudis Lorand         | 1997 | Extremoz                  | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  233 | Umberto Mammatt          | 2011 | Mercedes                  | Costa Rica                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  234 | Joel Coulthard           | 1993 | Itaperu├ºu                | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  235 | Renado Robertsson        | 1999 | Myadzyel                  | Belarus                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  236 | Wright Spearett          | 2002 | Jadho                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  237 | Dan Scarlin              | 2008 | Fuwen                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  238 | Boote Gierth             | 2009 | P├│voa do Valado          | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  239 | Nadine Adam              | 2007 | Nueva Gerona              | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  240 | Willabella Strasse       | 1987 | Hangkou                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  241 | Mariele Shuker           | 2007 | Bylym                     | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  242 | Alyss Bosher             | 2009 | Yunhe                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  243 | Riobard Danson           | 1994 | Pasirpanjang              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  244 | Tirrell Crampsey         | 2011 | New Orleans               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  245 | Sayre Menghi             | 2011 | Bocai├║va                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  246 | Eberto Hallowell         | 2010 | Nobres                    | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  247 | Rochella Ciric           | 1993 | Paphos                    | Cyprus                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  248 | Kort Burgott             | 2008 | Styl├¡da                  | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  249 | Edgard Condy             | 2004 | Raheny                    | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  250 | Rori Benbough            | 1968 | Amaury                    | Mauritius                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  251 | Agosto Durnford          | 1996 | Jo├úo Pinheiro            | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  252 | Joby Reilly              | 2003 | Garies                    | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  253 | Drew Challace            | 1984 | Visby                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  254 | Fawn Blethin             | 1996 | Jarash                    | Jordan                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  255 | Kain Dalziel             | 1992 | Igreja                    | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  256 | Lizbeth Inge             | 1995 | Nakuru                    | Kenya                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  257 | Roseline Beltzner        | 1991 | Thß╗ï Trß║Ñn Tß╗ºa Ch├╣a  | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  258 | Roxi Woodyer             | 1970 | Xinyan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  259 | Carmel Edney             | 1995 | Valencia                  | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  260 | Gallard Birkmyr          | 2011 | N├ífplio                  | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  261 | Kristyn Tupman           | 2002 | Dongjia                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  262 | Guenevere Tippetts       | 2005 | Duwe                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  263 | Devin Youthead           | 1992 | Chekmagush                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  264 | Anne-corinne La Torre    | 2008 | Quat├í                    | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  265 | Lynde Eldershaw          | 1993 | Staraya Russa             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  266 | Timmy Stroband           | 2004 | Baihe                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  267 | Karlie Kupec             | 1997 | Novi Kne┼╛evac            | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  268 | Myrilla Thorby           | 2009 | Kiernozia                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  269 | Filide Feenan            | 2004 | L├⌐vis                    | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  270 | Vanya Cristofari         | 2009 | Patao                     | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  271 | Corey Shavel             | 2002 | Muldersdriseloop          | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  272 | Brier Lillecrop          | 1990 | Koronadal                 | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  273 | Hewe Askie               | 1999 | K─ùdainiai                | Lithuania                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  274 | Jesse Splaven            | 2011 | Milaor                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  275 | Giffard Kneafsey         | 1966 | Sunzhen                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  276 | Basia Strevens           | 1984 | Sosnovo-Ozerskoye         | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  277 | Pen Hallstone            | 1993 | Qincheng                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  278 | Vere Fitzharris          | 2003 | Fengshan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  279 | Ingamar Dowdell          | 2009 | ┼înoj┼ì                   | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  280 | Gabbie Wardhaugh         | 1995 | Kloulklubed               | Palau                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  281 | Lorinda Garling          | 1994 | Khond─üb                  | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  282 | Allison Willard          | 2012 | Aeka                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  283 | Maryanna Eales           | 1996 | Mugan                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  284 | Colver Coney             | 2009 | Huangyang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  285 | Spencer Friedank         | 1963 | Gorna Oryakhovitsa        | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  286 | Jackie Gath              | 1989 | Torbat-e J─üm             | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  287 | Bentley Harcombe         | 2004 | Kagoro                    | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  288 | Blane Grissett           | 2006 | Vanga┼╛i                  | Latvia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  289 | Dorree Chieco            | 1989 | Atamyrat                  | Turkmenistan                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  290 | Coleen Wordesworth       | 2003 | Yuanbao                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  291 | Ruthie McCrisken         | 1992 | Jalatrang                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  292 | Gaven Wickersham         | 1995 | Carolina                  | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  293 | Opaline Levitt           | 2009 | Mixco                     | Guatemala                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  294 | Kimbra Quaintance        | 1992 | Tabatinga                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  295 | Pierette Stickings       | 1993 | Sokolnice                 | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  296 | Liuka Brogioni           | 2011 | Severskaya                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  297 | Munroe Mowbray           | 2007 | Chengguan                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  298 | Salomone Packham         | 2004 | Virolahti                 | Finland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  299 | Meier Feaks              | 2010 | Tegalwero                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  300 | Lazaro Silburn           | 2009 | Megaloch├│rion            | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  301 | Darius Bog               | 2012 | Torbay                    | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  302 | Theresita Wildman        | 2009 | Sharga                    | Mongolia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  303 | Tommy De Luna            | 1991 | Canela                    | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  304 | Dave Sidsaff             | 2003 | Leudelange                | Luxembourg                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  305 | Ann-marie Cubin          | 2009 | Leramatang                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  306 | Daryl Vagg               | 2005 | Andilamena                | Madagascar                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  307 | Hall Rustan              | 1999 | Raphoe                    | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  308 | Tymothy Yaneev           | 1993 | Mal─ürd                   | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  309 | Bennie Paniman           | 2005 | Longmen                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  310 | Ebonee Rowsel            | 2011 | Xiayang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  311 | Hermy Plaunch            | 1992 | Nova Ven├⌐cia             | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  312 | Oralee Deacock           | 1994 | Watuka                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  313 | Birk Budibent            | 1994 | Kopstal                   | Luxembourg                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  314 | Hyman Gwillym            | 1996 | Loket                     | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  315 | Dennis McGivena          | 1999 | Sertolovo                 | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  316 | Aida Semerad             | 2008 | Dapeng                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  317 | Libbi Drexel             | 1995 | Slobodka                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  318 | Nerta MacColgan          | 1997 | San Jos├⌐ del Guaviare    | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  319 | Gunner Jonuzi            | 1999 | Ricardo Palma             | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  320 | Tasia Styche             | 2003 | Mababanaba                | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  321 | Giacopo Challace         | 2010 | Pogranichnyy              | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  322 | Bertina Batchelor        | 2010 | Luoqiao                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  323 | Madelin Turbat           | 2009 | Baihe                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  324 | Frederigo Karadzas       | 2006 | Bang Yai                  | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  325 | Mohandas Waterhowse      | 2007 | SeverobaykalΓÇÖsk         | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  326 | Randa Serjeantson        | 2004 | Canauay                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  327 | Tiffie Cardis            | 1994 | Aparecida                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  328 | Alfredo Franzman         | 2004 | Kaura Namoda              | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  329 | Amy Pikesley             | 2002 | Rodol├¡vos                | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  330 | Wash Burrow              | 2001 | Denton                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  331 | Chuck Piddington         | 2000 | Caraguatatuba             | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  332 | Pearle Keitch            | 2006 | Oras                      | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  333 | Corry Halsall            | 2001 | Malveira                  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  334 | Megan Mc Ilwrick         | 2004 | Parramos                  | Guatemala                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  335 | Joaquin Gager            | 2007 | Aqta┼½                    | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  336 | Desiri Temple            | 2002 | Saint AnnΓÇÖs Bay         | Jamaica                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  337 | Pavel Beslier            | 1990 | Sadang Kulon              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  338 | Calley Ellis             | 2003 | Zhongchuan                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  339 | Morlee Haugeh            | 2004 | Tandahimba                | Tanzania                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  340 | Sergent Raleston         | 2010 | Marale                    | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  341 | Caritta Hamshaw          | 2007 | Shevchenkove              | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  342 | Borg Mc-Kerley           | 2005 | Kobylanka                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  343 | Emmi Trevan              | 2009 | Temorlorong               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  344 | Janela Haquin            | 1993 | Smithers                  | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  345 | Cherye Korn              | 2007 | Troms├╕                   | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  346 | Francklin King           | 1995 | Buyant                    | Mongolia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  347 | Delcine Dowbekin         | 1981 | Jab┼éonowo Pomorskie      | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  348 | Manuel Skully            | 1966 | Thß╗ï Trß║Ñn Y├¬n Ph├║    | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  349 | Onida Edgehill           | 2004 | Atafu Village             | Tokelau                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  350 | Laureen Giovannacc@i     | 2010 | Kuantan                   | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  351 | Cortie Treweek           | 2011 | Shumikha                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  352 | Estrella Egle of Germany | 2010 | Lubukgadang               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  353 | Kristyn Tracey           | 1996 | Xiawa                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  354 | Avivah Isakov            | 2006 | Sindangsari               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  355 | Teddy Mitham             | 1998 | Ganyesa                   | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  356 | Blake Wilkinson          | 2010 | Sokolovo                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  357 | Paton Lightewood         | 2008 | Banjar Kelodan            | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  358 | Winnie Bullcock          | 2007 | Gangkou                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  359 | Maggi Maxwell            | 1998 | Puro Pinget               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  360 | Petra Colt               | 2004 | Ararangu├í                | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  361 | Philly Chetham           | 2012 | Pajarillo                 | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  362 | Dacey Danneil            | 2011 | Kang─ün                   | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  363 | Irena Wooster            | 1997 | Alto do Estanqueiro       | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  364 | Aundrea Huett            | 1995 | Monte de Trigo            | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  365 | Gunilla Loody            | 2003 | Salaza                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  366 | Roldan Nesterov          | 2013 | Studzionka                | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  367 | Kellen Shipston          | 2012 | Olleros                   | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  368 | Georgetta Ogborn         | 1994 | Zaozhuang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  369 | Ame Linke                | 1997 | Jinping                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  370 | Tessy Ebden              | 2005 | ├älvsj├╢                  | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  371 | Geneva Rowlings          | 1990 | Al Ghayl                  | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  372 | Andonis Dight            | 2012 | Tocumen                   | Panama                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  373 | Sheff Folds              | 1988 | Pindorama                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  374 | Lucian Gillford          | 2011 | Qiaotou                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  375 | Aurora Benkin            | 2004 | Lajeado                   | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  376 | Pam Boscott              | 1997 | Pojok                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  377 | Tybie Dunnet             | 2009 | Perushtitsa               | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  378 | Murial Boyer             | 2004 | Zhongshan Donglu          | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  379 | Eugenius Crome           | 2001 | Slavonice                 | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  380 | Arleyne Philpott         | 1993 | Baleal                    | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  381 | Marcille Hember          | 2003 | Rontu                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  382 | Kelsi Witch              | 1995 | Angers                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  383 | Terrie Baccus            | 2010 | Karangnongko              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  384 | Andrew Gaspero           | 2000 | Galat├ís                  | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  385 | Peggie Jardein           | 1985 | Purda                     | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  386 | Huey Dobrovsky           | 1988 | Oibioin                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  387 | Jonah McGirl             | 2008 | Florencio S├ínchez        | Uruguay                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  388 | Arnoldo Hebner           | 2010 | Woodford Hill             | Dominica                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  389 | Sharai Bagge             | 2006 | Kedian                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  390 | Devin Burch              | 2004 | Trzciana                  | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  391 | Ashlan Pakes             | 2011 | Pandian                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  392 | Joyan Killoran           | 1985 | Sendai                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  393 | Johna MacGahy            | 1999 | B─¢l├í pod Bezd─¢zem      | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  394 | Gerard Gerring           | 1994 | Ko─ìevje                  | Slovenia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  395 | Theobald Braunstein      | 1992 | Tororo                    | Uganda                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  396 | Flory Leeds              | 2010 | Santa Helena              | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  397 | Tabor Firle              | 1997 | Maisons-Laffitte          | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  398 | Steven Slott             | 1993 | Tran├Ñs                   | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  399 | Trudey Lias              | 1985 | Kokar                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  400 | Normand Fergie           | 1998 | Shazhouba                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  401 | Diandra Tewes            | 2005 | Tha╠únh Ho╠üa             | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  402 | Valentijn Mulrooney      | 2009 | Jungkat Selatan           | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  403 | Chlo Malsher             | 1999 | Krajan C Wonorejo         | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  404 | Marylynne Eadington      | 2005 | Shahumyan                 | Armenia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  405 | Dwain Sollom             | 1998 | Santa Cec├¡lia            | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  406 | Lanette McClune          | 1995 | Jacarezinho               | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  407 | Keven Formigli           | 2003 | Al Hil─üliyya             | Sudan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  408 | Karim Wollacott          | 1992 | Nong Bun Nak              | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  409 | Thaxter Puttrell         | 1992 | Jastrz─Öbia               | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  410 | Tony Buncher             | 1999 | Leiyang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  411 | Nathaniel Bolesworth     | 1989 | Dubno                     | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  412 | Elora Langhor            | 2000 | Nowe Warpno               | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  413 | Smitty Heakey            | 2009 | Shilu                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  414 | Martin Collett           | 1994 | Liyang                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  415 | Fiann Maeer              | 2008 | Clodomira                 | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  416 | Farra Dodimead           | 2008 | Paris 08                  | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  417 | Daisi Scaysbrook         | 2005 | Guanba                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  418 | Bernard Beevis           | 2012 | Ngori                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  419 | Gabie Jako               | 2006 | Andong                    | South Korea                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  420 | Ilyssa Simonich          | 1970 | Plaridel                  | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  421 | Peter Beddoe             | 2000 | Magrath                   | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  422 | Dunn Di Bartolommeo      | 1994 | Katrineholm               | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  423 | Kevina Pullan            | 2009 | ─îesk├╜ T─¢┼í├¡n          | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  424 | Flss Scutcheon           | 2005 | Cerinza                   | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  425 | Lynea Gegg               | 1984 | Heshang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  426 | Dwight Paladini          | 1986 | Xiaojie                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  427 | Viviana Cliburn          | 1993 | Ancenis                   | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  428 | Benson Shayler           | 1991 | Sindangsari               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  429 | Kristen Fathers          | 1986 | Daqian                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  430 | Corie Hastilow           | 2008 | Shiyan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  431 | Fanni Culley             | 2001 | Tianxin                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  432 | Maegan Neville           | 2010 | Summerland                | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  433 | Marvin Swatland          | 2007 | Svetlograd                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  434 | Maxim Gioan              | 1987 | Dananshan                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  435 | Brynne Matyushenko       | 2011 | Beloyarskiy               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  436 | Merle Waycott            | 1996 | Helsingborg               | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  437 | Ax Hatfield              | 1984 | Sanyang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  438 | Jacinta Gagie            | 2012 | Shuangnian                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  439 | Stace Castard            | 2006 | Hangchuan                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  440 | Sara Donisthorpe         | 1993 | Bouarouss                 | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  441 | Boy Spowage              | 1998 | Berezniki                 | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  442 | Bamby Skoughman          | 1987 | Heidelberg                | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  443 | Dew Flowerden            | 2003 | Kafr az Zayy─üt           | Egypt                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  444 | Wallace Whillock         | 2011 | DaΓÇÖan                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  445 | Christa Dwelly           | 2004 | La Vi├▒a                  | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  446 | Farlie Nortunen          | 1999 | Shorko                    | Pakistan                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  447 | Bartholemy Garwill       | 2009 | Opat├│wek                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  448 | Marlo Measham            | 1965 | Springfield               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  449 | Mead Delamere            | 2002 | Elass├│na                 | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  450 | Carlen Buckham           | 2010 | Manhi├ºa                  | Mozambique                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  451 | Catlaina Crayke          | 2009 | Kawambwa                  | Zambia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  452 | Nikos Borthe             | 2011 | D─àbie                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  453 | Ruthe Tether             | 2012 | Gargali├ínoi              | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  454 | Katerina Ivakhin         | 2005 | Williamsfield             | Jamaica                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  455 | Latashia Torresi         | 2008 | Fonta├¡nhas               | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  456 | Jocko Gowrie             | 1995 | Dayou                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  457 | Xavier Annett            | 2009 | Nanling                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  458 | Essa Camolli             | 2007 | Varadero                  | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  459 | Zebedee deKnevet         | 2002 | Argenteuil                | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  460 | Deina Coolbear           | 2003 | Ipoti                     | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  461 | Annette Carnow           | 1999 | Pozhang                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  462 | Nicolea Zamora           | 2005 | Gornyak                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  463 | Federico Camies          | 2006 | Sari                      | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  464 | Florenza Bomb            | 2005 | Xiaojing                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  465 | Ellene LLelweln          | 1998 | Taipingchuan              | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  466 | Patrica Paye             | 1985 | N├⌐a Sm├╜rni              | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  467 | Umeko Knuckles           | 2007 | Tangban                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  468 | Griz Milburne            | 2011 | Fanzeres                  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  469 | Scarface Alesi           | 1994 | Skinnskatteberg           | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  470 | Shelby Bourgour          | 2005 | Changlong                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  471 | Packston Bousquet        | 2006 | Shanjie                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  472 | Pail Paterson            | 2007 | San Jer├│nimo             | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  473 | Saundra Mullord          | 1997 | Zhujiang                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  474 | Balduin Teml             | 2001 | Semikarakorsk             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  475 | Bridgette Powdrell       | 2000 | Umm as Summ─üq            | Jordan                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  476 | Nehemiah Lock            | 1987 | Majunying                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  477 | Dari Kneesha             | 1984 | Puerto Ayacucho           | Venezuela                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  478 | Maxie Lannon             | 1988 | Kesheng                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  479 | Johnette Musprat         | 1992 | Cachoeira                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  480 | Selby Akeherst           | 1995 | Deshan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  481 | Bibbye Eginton           | 2000 | Leigongjian               | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  482 | Christel Hauch           | 1992 | Morteros                  | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  483 | Josh Jerisch             | 1985 | Kertabumi                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  484 | Bernadine Dressel        | 2006 | Oral                      | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  485 | Paul Philimore           | 2004 | Sendangrejo               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  486 | Ingram Ateggart          | 1996 | Luxia                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  487 | Jared Brayson            | 2002 | Prior Velho               | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  488 | Dewie Tallon             | 2008 | Cigintung                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  489 | Donny Astill             | 2007 | Viedma                    | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  490 | Mildred Andreucci        | 1984 | Ca├▒averal                | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  491 | Delphine Trusslove       | 2005 | Shu                       | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  492 | Uri Schruur              | 1993 | Vavozh                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  493 | Shay Dows                | 2009 | Oeiras                    | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  494 | Grantley Filippyev       | 2003 | Baihe                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  495 | Tomkin Scoggin           | 1997 | Cergy-Pontoise            | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  496 | Darell MacCorley         | 1996 | NikolΓÇÖskoye             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  497 | Michaela Loveguard       | 2005 | Obodivka                  | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  498 | Katerina Sives           | 2007 | Longwan                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  499 | Onfroi Tanswell          | 1997 | Gazojak                   | Turkmenistan                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  500 | Casie Giacopello         | 1993 | Bourg-en-Bresse           | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  501 | Felecia Endicott         | 1992 | Sokod├⌐                   | Togo                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  502 | Sascha Slora             | 2005 | Cieurih Satu              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  503 | Janith Pidwell           | 2003 | Casais Baleal             | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  504 | Jania McCane             | 2005 | Risaralda                 | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  505 | Ortensia Gitthouse       | 2011 | Yongle                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  506 | Kerianne Hauck           | 2003 | J├╢nk├╢ping               | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  507 | Andrew Melby             | 2007 | Quimist├ín                | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  508 | Meg Lapsley              | 2009 | Hengshanqiao              | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  509 | Pierre Tidmarsh          | 2006 | Loma                      | Sierra Leone                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  510 | Shea Keaton              | 1992 | Jiangkou                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  511 | Selie Phalip             | 1994 | Sizao                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  512 | Ertha Ughi               | 2011 | Kongjiang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  513 | Mirna Cairns             | 1992 | Jatiklampok               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  514 | Milty Aspinell           | 1992 | Kebon                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  515 | Bob Asel                 | 1993 | Cikadu                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  516 | Janenna Raxworthy        | 1995 | Tripoli                   | Lebanon                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  517 | Mel Scogings             | 2008 | Monte Francisco           | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  518 | Murial Cyson             | 1996 | Bobon                     | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  519 | Dean Pepis               | 1998 | Samothr├íki               | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  520 | Annelise Worswick        | 1995 | B─üglung                  | Nepal                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  521 | Bridget Sarle            | 1966 | Nogliki                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  522 | Quintin Husbands         | 1994 | N├«mes                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  523 | Ceciley Amey             | 1994 | Anulid                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  524 | Jo ann Melsom            | 1993 | Trondheim                 | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  525 | Ahmed Akister            | 2012 | Telbang                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  526 | Wallie Dunbabin          | 1995 | Baojia                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  527 | Cordy de'-Ancy Willis    | 1999 | Oke Ila                   | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  528 | Ekaterina Halt           | 2004 | Sukojember                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  529 | Rickey Kiebes            | 2010 | Lanzhong                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  530 | Kalil Lestor             | 1998 | Almelo                    | Netherlands                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  531 | Sascha Tesseyman         | 1999 | Lyubech                   | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  532 | Chris Tant               | 1984 | Grekan                    | Albania                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  533 | Thane Rassell            | 1989 | Jabonga                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  534 | Emmie Lutwidge           | 1998 | Tangjian                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  535 | Karylin Stockman         | 1994 | Sitularang Landeuh        | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  536 | Zonda Barkas             | 2006 | ─░smay─▒ll─▒              | Azerbaijan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  537 | Shoshanna Shama          | 2010 | Liuzuo                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  538 | Burch Sharplin           | 2011 | Oepuah                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  539 | Roshelle Masedon         | 1994 | Hova                      | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  540 | Wildon Jugging           | 2008 | Jacksonville              | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  541 | Barnebas Romei           | 2006 | Tianjin                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  542 | Celina Pulfer            | 1995 | Progreso                  | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  543 | Domeniga Wreight         | 2008 | Duwayr Rasl─ün            | Syria                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  544 | Sydelle Twiname          | 2005 | Huayllabamba              | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  545 | Shea Greson              | 2007 | Chotcza                   | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  546 | Britteny McPike          | 1994 | Al Qurß╕⌐                 | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  547 | Colas Devereux           | 1988 | Daping                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  548 | Jamima Bradane           | 2009 | V├írzea                   | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  549 | Jeremiah Brakespear      | 2005 | Mozhong                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  550 | Tamma Ibanez             | 1996 | Kal─üt-e N─üder─½         | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  551 | Mar Braitling            | 1991 | Sapele                    | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  552 | Haleigh Gwioneth         | 2005 | Moquegua                  | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  553 | Arturo Drinkwater        | 2002 | Osieczany                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  554 | Charis Tort              | 2001 | Calibishie                | Dominica                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  555 | Paule Dennerly           | 1999 | Kyaiklat                  | Myanmar                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  556 | Karon Ibbett             | 1987 | Karpushikha               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  557 | Louie Ohm                | 2004 | ß╕¿─üfiz╠º Moghul         | Afghanistan                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  558 | Mahmud Ellse             | 2012 | ├ërd                      | Hungary                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  559 | Celinda Anmore           | 1994 | Padre Nabeto              | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  560 | Cinda Izhakov            | 2005 | Bhalil                    | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  561 | Margalit Duligall        | 2003 | Ikoma                     | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  562 | Orran Alliberton         | 2006 | Aß╕æ ß╕ÉilΓÇÿ             | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  563 | Isa Snellman             | 1986 | Bouca                     | Central African Republic                     |  1 |           1 | 0000-00-00 00:00:00 |
|  564 | Clevey Tomasini          | 1995 | B├¡lovice                 | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  565 | Eula Zuker               | 1995 | Bahir Dar                 | Ethiopia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  566 | Meggy Rasp               | 2011 | Burgas                    | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  567 | Carver Benardet          | 1997 | Durham                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  568 | Evonne Baswall           | 2001 | Belene                    | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  569 | Rickey Birks             | 2003 | Tabua├ºo                  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  570 | Audrie Spratt            | 2006 | F├⌐res                    | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  571 | Carleen Covotti          | 2009 | Anda                      | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  572 | Catharina Smethurst      | 2007 | Manay                     | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  573 | Conrado Jodrelle         | 2008 | Coolock                   | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  574 | Merrill Heisham          | 1995 | Sharan                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  575 | Amanda Moorton           | 2006 | Ketovo                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  576 | Roseann Smullin          | 1985 | Jiangdianzi               | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  577 | Kissee Ronchka           | 2009 | Curridabat                | Costa Rica                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  578 | Darleen Carnelley        | 2006 | Santa Maria               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  579 | Junette Maben            | 2003 | Dziadkowice               | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  580 | Rikki Bohlsen            | 1989 | Cibunar                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  581 | Dan Cavilla              | 1995 | Mora                      | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  582 | Porter Kissell           | 2011 | Khorixas                  | Namibia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  583 | Shea Van Giffen          | 2012 | Syc├│w                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  584 | Kalle Perren             | 2004 | Solnechnyy                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  585 | Shurwood Alban           | 2001 | Villa Nueva               | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  586 | Deeann Syplus            | 2011 | Kal─üt-e N─üder─½         | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  587 | Beverie Tapenden         | 1998 | Dallas                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  588 | Ardyth Cleator           | 2002 | Guxi                      | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  589 | Patricio Sainsbury-Brown | 1994 | Varva                     | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  590 | Dawna Papierz            | 1987 | Carhuamayo                | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  591 | Danielle Enden           | 1999 | Ridder                    | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  592 | Dollie de Najera         | 2003 | Phoenix                   | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  593 | Royall Saffin            | 1990 | Doln├¡ ─îernilov          | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  594 | Annabelle Byres          | 2003 | Lom Sak                   | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  595 | Lurline Adolphine        | 1984 | Sh─ühpur                  | Pakistan                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  596 | Jolynn Edess             | 2009 | Chengzhong                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  597 | Gabriel Crannage         | 2006 | Ambato Boeny              | Madagascar                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  598 | Adan Spedding            | 2012 | Gucheng                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  599 | Missie Wogan             | 1996 | Sakhn─½n                  | Israel                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  600 | Becca Amos               | 1993 | Cassanayan                | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  601 | Emmi Melpuss             | 2002 | Yifaquan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  602 | Gwenette Element         | 2003 | Saint-Joseph-de-Coleraine | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  603 | Randy Rodmell            | 1994 | Lingsar                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  604 | Leslie Minet             | 2005 | Kota Kinabalu             | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  605 | Kaja Wesson              | 2011 | Madrid                    | Spain                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  606 | Vincenz Sponton          | 1996 | Osilnica                  | Slovenia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  607 | Ellie Albisser           | 2006 | Jembangan                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  608 | Roger Mallindine         | 1986 | Regimin                   | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  609 | Lucienne Mathivet        | 1989 | ß╕¿ab─übah                | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  610 | Titos Vasilenko          | 2008 | Ilio├║poli                | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  611 | Dasya Lindsley           | 2008 | Milwaukee                 | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  612 | Griffin Gaywood          | 2004 | Kobelyaky                 | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  613 | Salomo Costin            | 1991 | Randusari                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  614 | Redford Cuseck           | 1992 | New Agutaya               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  615 | Dudley Hanmer            | 1993 | Chaumont                  | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  616 | Valle Cisson             | 1999 | Fulin                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  617 | Wendy Sneddon            | 2008 | Talawi                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  618 | Lee Budding              | 1988 | Antony                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  619 | Oliver Yackiminie        | 2004 | Caicara                   | Venezuela                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  620 | Emmet Bool               | 2012 | Cilongkrang               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  621 | Augustine Farans         | 1986 | Paris 12                  | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  622 | Clem Pleasaunce          | 1988 | Hushan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  623 | Halsey Van Arsdalen      | 1988 | Chengjiang                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  624 | Kassey Bond              | 1987 | Tamel                     | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  625 | Bartholomeo Mirfin       | 2004 | MuzayriΓÇÿ                | United Arab Emirates                         |  1 |           1 | 0000-00-00 00:00:00 |
|  626 | Dael McGifford           | 1997 | Delaware                  | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  627 | Rikki Gemelli            | 1998 | UstΓÇÖ-Kalmanka           | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  628 | Eddi Blesli              | 1984 | Mitaka-shi                | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  629 | Pattin Fortye            | 2008 | Takefu                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  630 | Maridel Willingam        | 1989 | Xiangqiao                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  631 | Arleen Kennard           | 1998 | Namangan Shahri           | Uzbekistan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  632 | Belicia Dumphy           | 1992 | Shamva                    | Zimbabwe                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  633 | Mab Hessel               | 2013 | Banag                     | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  634 | Bord Tregale             | 2003 | Bagansiapiapi             | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  635 | Nelli Donoghue           | 1994 | Kedian                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  636 | Ajay Palfrie             | 1993 | Norrt├ñlje                | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  637 | Wait Penkethman          | 1984 | Sena                      | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  638 | Katusha Jouhan           | 1992 | Zhendu                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  639 | Finley Dottridge         | 2004 | Mont-Joli                 | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  640 | Jandy Bulley             | 2000 | Tanahmerah                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  641 | Theresina Fallen         | 2009 | Yermolino                 | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  642 | Englebert Blaker         | 2005 | Tandou                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  643 | Milzie Southouse         | 2010 | Shtip                     | Macedonia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  644 | Neely Banasevich         | 2012 | Kumla                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  645 | Xaviera Cruxton          | 2008 | Cholpon-Ata               | Kyrgyzstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  646 | Cass Wills               | 1997 | Pengilon                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  647 | Allx Rugge               | 2002 | Rive-de-Gier              | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  648 | Demetria Trenchard       | 1986 | Iparia                    | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  649 | Denney Washington        | 2007 | Lubochnia                 | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  650 | Yorke Duferie            | 1995 | GaoΓÇÖan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  651 | Susanne Lympenie         | 1985 | Targowisko                | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  652 | Cherrita Kington         | 1989 | J─½ma                     | Ethiopia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  653 | Farleigh Bisset          | 2001 | Mankono                   | Ivory Coast                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  654 | Cornelia Boni            | 2009 | Chapec├│                  | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  655 | Dudley Dalrymple         | 1989 | Nankengzi                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  656 | Lindsay Abrami           | 2000 | Novaya Mayna              | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  657 | Clevie Winear            | 1996 | Twork├│w                  | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  658 | Tripp Ericsson           | 1992 | Yevpatoriya               | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  659 | Eveline Dytham           | 2012 | San Miguel                | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  660 | Blakeley Proom           | 2009 | Mund├úo                   | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  661 | Georgia Brunet           | 2006 | Mabini                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  662 | Scotty Stallion          | 2006 | Curug                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  663 | Mareah Douris            | 2004 | Newark                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  664 | Deck Domeny              | 2005 | Agadez                    | Niger                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  665 | Uriah Ferrarin           | 2009 | Trondheim                 | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  666 | Meghann Stitch           | 2011 | Chonchi                   | Chile                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  667 | Sylvia Gowar             | 2009 | Balungkopi                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  668 | Yoshi Kahn               | 2002 | SokolΓÇÖskoye             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  669 | Selinda Mytton           | 1984 | Roodepoort                | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  670 | Avie Lorimer             | 2008 | Shencang                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  671 | Karel Cardis             | 2006 | Mingora                   | Pakistan                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  672 | Klemens McTrustey        | 2008 | Hatton                    | Sri Lanka                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  673 | Amalia Bowstead          | 2010 | Shouzhan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  674 | Stanislaw Tomasi         | 2009 | Taochuan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  675 | Melanie Laverock         | 2009 | Redondos                  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  676 | Dimitry Stockhill        | 2006 | Sighnaghi                 | Georgia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  677 | Vevay Laxston            | 1986 | Al Mughayyir              | Palestinian Territory                        |  1 |           1 | 0000-00-00 00:00:00 |
|  678 | Frank Buchanan           | 2010 | Shiban                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  679 | Darcee Neary             | 1994 | Haicheng                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  680 | Babara Jarrold           | 2012 | Madrid                    | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  681 | Jim Barz                 | 2004 | Yarabamba                 | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  682 | Peter Greene             | 2011 | Yuscar├ín                 | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  683 | Katina Stewart           | 2011 | Baoji                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  684 | Hettie Pearton           | 2002 | Alak                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  685 | Netta Klasing            | 2009 | Nanqiao                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  686 | Reid Strelitzki          | 1983 | Guintubhan                | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  687 | Gardiner Todeo           | 2000 | San Jer├│nimo             | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  688 | Susi Wrettum             | 1992 | Vangaindrano              | Madagascar                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  689 | Gerda McCaster           | 2010 | Ermelo                    | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  690 | Alyss Mauser             | 2003 | Penha Longa               | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  691 | Austin Tylor             | 1989 | Anjani Barat              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  692 | Brenden Betchley         | 2001 | Adassil                   | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  693 | Laurence Incogna         | 2007 | Megal├│poli               | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  694 | Cinda Masseo             | 1994 | Guangshun                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  695 | Gabbie Pointer           | 2002 | Kansas City               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  696 | Tedra Dehmel             | 2006 | Maganha                   | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  697 | Pryce Boatswain          | 1993 | Tokmok                    | Kyrgyzstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  698 | Mord O'Sirin             | 2007 | Sungaigerong              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  699 | Eartha Riddiough         | 2006 | Maastricht                | Netherlands                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  700 | Aeriela Duffan           | 2002 | Sartana                   | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  701 | Maryl Major              | 2004 | Ignacio Zaragoza          | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  702 | Ronny Hebbs              | 1992 | Beitan                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  703 | Torre Burness            | 1989 | Zyuzino                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  704 | Tom Speak                | 1993 | Beya                      | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  705 | Merell Hindge            | 2007 | Fredrikstad               | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  706 | Sande Maryet             | 2007 | Faq─½rw─üli               | Pakistan                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  707 | Gustaf Reinhardt         | 1998 | Mukayr─üs                 | Yemen                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  708 | Guthrey Tarbett          | 1969 | New York City             | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  709 | Vilma Laurisch           | 2000 | Al Qaryatayn              | Syria                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  710 | Aubrie Bagenal           | 2009 | Richmond                  | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  711 | Dulcine Threadgall       | 2001 | Kivsharivka               | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  712 | Adorne Clethro           | 2001 | Putrajaya                 | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  713 | Chastity Youell          | 2006 | Atlanta                   | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  714 | Sargent Meardon          | 1998 | Piterka                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  715 | Tamra Jefferies          | 2012 | Muqui                     | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  716 | Everett Fritchley        | 2010 | Uni├│n                    | Paraguay                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  717 | Ezekiel Shortall         | 2010 | Shah Alam                 | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  718 | Frayda Poundsford        | 2011 | Enshi                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  719 | Man Cullinan             | 2009 | Agago                     | Uganda                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  720 | Averell Amorts           | 2007 | Palpal├í                  | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  721 | Sherline Beniesh         | 1973 | Tacuat├¡                  | Paraguay                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  722 | Franklyn Thickins        | 1999 | Lawrenceville             | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  723 | Perri Ashwood            | 2010 | Penanggungan              | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  724 | Bette Strange            | 2007 | Zinder                    | Niger                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  725 | Olympie Densham          | 1996 | Marinilla                 | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  726 | Ame Hanscome             | 2012 | Guanting                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  727 | Ariel Ickowics           | 2007 | Rozivka                   | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  728 | Benoit Mirfin            | 1996 | KrasnokutsΓÇÖk            | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  729 | Trista Cattow            | 2009 | Zerok-Alakadari           | Afghanistan                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  730 | Brant Baurerich          | 2008 | Fundaci├│n                | Dominican Republic                           |  1 |           1 | 0000-00-00 00:00:00 |
|  731 | Les Kayzer               | 2009 | Nakhon Pathom             | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  732 | Kathryne Pippin          | 1994 | Thß╗ï Trß║Ñn Ngß╗ìc Lß║╖c | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  733 | Linus Storek             | 2006 | Newark                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  734 | Mariana Orum             | 1992 | Perpignan                 | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  735 | Yelena Strutley          | 2010 | Lumatil                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  736 | Dorris Priden            | 2002 | Qar─üwat Ban─½ Zayd       | Palestinian Territory                        |  1 |           1 | 0000-00-00 00:00:00 |
|  737 | Hagan Lummus             | 2002 | Sari                      | Iran                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  738 | Camellia Shillabear      | 1994 | Kobyl├¡                   | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  739 | Morna Spileman           | 1973 | Schroeder                 | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  740 | Alyssa McAuley           | 1989 | Zhugentan                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  741 | Peterus Heindl           | 1996 | Valpara├¡so               | Chile                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  742 | Kipper Tommasi           | 2004 | Honglai                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  743 | Lee Stigger              | 1992 | Diva─ìa                   | Slovenia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  744 | Phillip Batten           | 1991 | Teminabuan                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  745 | Irene Crosthwaite        | 2005 | Piskavica                 | Bosnia and Herzegovina                       |  1 |           1 | 0000-00-00 00:00:00 |
|  746 | Loleta Gilliver          | 2008 | Umabay                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  747 | Christian Wemyss         | 2005 | Severodvinsk              | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  748 | Whitaker Ormston         | 2000 | Rutul                     | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  749 | Albrecht Keemer          | 2002 | Casuguran                 | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  750 | Cory Arbuckel            | 2004 | Nov├╜ Kn├¡n               | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  751 | Steffen MacAndrew        | 2011 | Castrovirreyna            | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  752 | Frederique Dellenbrook   | 1996 | Severomorsk               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  753 | Liv Worsnop              | 1999 | Dao                       | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  754 | Donny Sansome            | 2007 | Richard-Toll              | Senegal                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  755 | Izak Scorah              | 2007 | Ferraz de Vasconcelos     | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  756 | Martyn Breche            | 2007 | Devitsa                   | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  757 | Glory Corwin             | 2010 | Landskrona                | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  758 | Rolando Bunning          | 1991 | ┼ápi┼íi─ç-Bukovica        | Croatia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  759 | Agathe Tolle             | 2006 | Tongjing                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  760 | Elwood Dammarell         | 1995 | Protecci├│n               | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  761 | Brandy Nanuccioi         | 1983 | Jard├¡n Am├⌐rica          | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  762 | Selma Oulett             | 1992 | Pilawa                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  763 | Far Aldrick              | 1996 | Lidong                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  764 | Tabb De Laspee           | 1989 | Rozvadov                  | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  765 | Bridget Duquesnay        | 1997 | Klerksdorp                | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  766 | Ravid Muro               | 2008 | Kinna                     | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  767 | Vannie Kordes            | 2010 | Pavlohrad                 | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  768 | Aube Sales               | 2010 | Yaroslavskiy              | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  769 | Fitzgerald Kinastan      | 1993 | Oenaik                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  770 | Nolan Richardon          | 2000 | Tiedonglu                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  771 | Tod Swyne                | 1994 | Velk├╜ T├╜nec             | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  772 | Donal Stoile             | 2005 | Timiryazevskiy            | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  773 | Rene Healing             | 1994 | Hayes                     | Jamaica                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  774 | Lin Simmig               | 2003 | Sainte-Martine            | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  775 | Mord Threadgill          | 2009 | Malikisi                  | Kenya                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  776 | Merill Shadrack          | 1985 | Suzaka                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  777 | Devora Baughen           | 1997 | Sukamahi Satu             | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  778 | Ruggiero Hilling         | 2000 | Vy┼íkov                   | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  779 | Minor Prettjohn          | 2002 | Cachoeiro de Itapemirim   | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  780 | Cyrille Gamlen           | 1999 | Limatambo                 | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  781 | Norman Le Houx           | 1994 | Murtajih                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  782 | Karyl Benedito           | 2006 | Buraen                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  783 | Agata Stammer            | 2008 | VilΓÇÖnyansΓÇÖk           | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  784 | Irena Brunetti           | 2008 | Aksakovo                  | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  785 | Tailor Casado            | 1999 | Lyon                      | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  786 | Ellary Ruzek             | 1989 | Solidaridad               | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  787 | Tatiana Cliffe           | 2006 | Bella Vista               | Paraguay                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  788 | Arie Chantree            | 1993 | Mahuta                    | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  789 | Georgie Ganderton        | 2000 | Sadao                     | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  790 | Leone Blanning           | 2008 | Banyuresmi                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  791 | Ferne Daud               | 2000 | Dejen                     | Ethiopia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  792 | Ileane MacPeice          | 1992 | Volovets                  | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  793 | Adel Powling             | 1996 | Sumberagung               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  794 | Lewiss Platfoot          | 2009 | Zhaoyuan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  795 | Ambrose Simco            | 1985 | Sanjie                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  796 | Celestina Petschel       | 2002 | XinΓÇÖan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  797 | Skipp Nisot              | 2009 | Novyy Karachay            | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  798 | Lauren Hansill           | 1987 | Mamurras                  | Albania                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  799 | Yvonne Donhardt          | 2000 | Miejsce Piastowe          | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  800 | Arline Mintoft           | 1992 | Dimbokro                  | Ivory Coast                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  801 | Lena Palphramand         | 2008 | Pu┼äsk                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  802 | Elayne Ousley            | 1990 | Merke                     | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  803 | Gaultiero Koppes         | 2005 | Xiliu                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  804 | Lindsay Motto            | 1998 | Komyshnya                 | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  805 | Charity Livingstone      | 2000 | Xinminxiang               | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  806 | Stanly Rylstone          | 2001 | Abilay                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  807 | Egor Mussett             | 1984 | Pho Si Suwan              | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  808 | Arleyne O'Hannen         | 1992 | Kadubadak                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  809 | Nixie Grangier           | 2009 | Cimuncang                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  810 | Hermon Scotford          | 2005 | Gritsovskiy               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  811 | Jedediah Arnaldo         | 1986 | Changling                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  812 | Manya Kemmey             | 2000 | Purwodadi                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  813 | Thurstan Wastling        | 1993 | Saint-Louis du Nord       | Haiti                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  814 | Jasmina Puttock          | 2004 | Casal                     | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  815 | Coretta Doxsey           | 2009 | R├╢nninge                 | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  816 | Diann Grey               | 1997 | Paraiso                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  817 | Christos Butterly        | 2002 | Shuiyin                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  818 | Palmer Monteaux          | 1999 | Ban├¡                     | Dominican Republic                           |  1 |           1 | 0000-00-00 00:00:00 |
|  819 | Corby Tomasino           | 2005 | Sanzhou                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  820 | Pierce Goudard           | 1997 | Arue                      | French Polynesia                             |  1 |           1 | 0000-00-00 00:00:00 |
|  821 | Madella Kynton           | 2006 | Bulembu                   | Swaziland                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  822 | Gabbi Wyldbore           | 1962 | Santo Domingo             | Nicaragua                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  823 | Margit Hakewell          | 2001 | KhoronkΓÇÖ                | Armenia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  824 | Isak Coe                 | 1995 | Longyuanba                | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  825 | Erich Scholey            | 1998 | Kultayevo                 | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  826 | Sandra Stutely           | 1999 | Camp Diable               | Mauritius                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  827 | Bastian Hargess          | 2000 | Hispania                  | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  828 | Glennis Rich             | 1998 | Reston                    | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  829 | Rafe Pritchard           | 1967 | C├írdenas                 | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  830 | Hamil Cockett            | 2004 | KozeletsΓÇÖ               | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  831 | Welsh Hanscome           | 2010 | Pasadena                  | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  832 | Lari Jones               | 2012 | New Orleans               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  833 | Christie Trebbett        | 2003 | Tuy Ph╞░╞í╠üc             | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  834 | Sarita Crawley           | 2002 | Tomobe                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  835 | Lanette Busek            | 2012 | Ivouani                   | Comoros                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  836 | Jane Monteith            | 2008 | Reserva                   | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  837 | Arabela Washtell         | 1993 | Alegre                    | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  838 | Maxi Myner               | 2009 | Tsalka                    | Georgia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  839 | Alwyn Finden             | 2001 | Changshou                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  840 | Lauri Zanicchi           | 1999 | La Reforma                | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  841 | Fabian Amphlett          | 2002 | Milaor                    | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  842 | Andrei Buggs             | 1999 | Fuyu                      | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  843 | Ermin Garden             | 1993 | Wangbuzhuang              | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  844 | Devland Boxe             | 1992 | Naze                      | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  845 | Norry Georgiev           | 2011 | Svenljunga                | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  846 | Querida Screaton         | 2001 | San Vicente               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  847 | Breena Chateau           | 2010 | ├ügios Athan├ísios        | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  848 | Hart Maddox              | 2011 | Cermee                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  849 | Alec Sobieski            | 1992 | Shangxing                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  850 | Marguerite Ricson        | 2009 | G├╢teborg                 | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  851 | Susie Tschersich         | 1989 | Bilo                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  852 | Dede Scotney             | 2004 | Rego                      | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  853 | Merry Mulroy             | 2011 | Reforma                   | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  854 | Annalee Nealey           | 1982 | Lebahseri                 | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  855 | Georgeanna McEnteggart   | 1989 | N├«mes                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  856 | Allix Kassman            | 1993 | Olleros                   | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  857 | Timoteo Fylan            | 2011 | Haodian                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  858 | Kimberly Autie           | 2009 | La Rochelle               | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  859 | Berty Vanetti            | 2000 | Laizhou                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  860 | Florida Gariff           | 2000 | Kiambu                    | Kenya                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  861 | Lucien Taylerson         | 1965 | Tlu─ìn├í                  | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  862 | Liam Corbally            | 2009 | Liushui                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  863 | Kassia Del Monte         | 2002 | Changling                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  864 | Mariya Corradeschi       | 2007 | Guanting                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  865 | Maren Wackett            | 2007 | Yuscar├ín                 | Honduras                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  866 | Ingrim Heindl            | 1992 | Kanye                     | Botswana                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  867 | Rozalin Whithalgh        | 1998 | Dingcheng                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  868 | Ardisj Willman           | 2002 | Trincomalee               | Sri Lanka                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  869 | Thurston Mathewson       | 2000 | Zaoxi                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  870 | Barton Uc                | 2009 | Toukh                     | Egypt                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  871 | Dud Stainbridge          | 1969 | Maumbawa                  | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  872 | Joann Winsborrow         | 2000 | Zhongfang                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  873 | Huey Locarno             | 2001 | Wlingi                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  874 | Claudelle Andrusov       | 1999 | Wenxing                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  875 | Olga Holby               | 2008 | Dordrecht                 | Netherlands                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  876 | Dael Tillyer             | 1994 | La Seyne-sur-Mer          | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  877 | Berget Swadling          | 2003 | ShinΓÇÖichi               | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  878 | Zack Gutowski            | 1995 | Kashihara                 | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  879 | Lulita Romayne           | 2012 | Jalgung                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  880 | Roberto Heath            | 1999 | Bu├┤n Trß║Ñp              | Vietnam                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  881 | Reilly Dolohunty         | 1989 | B├⌐labo                   | Cameroon                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  882 | Gray Anshell             | 2001 | ΓÇÿAl─½ al Gharb─½        | Iraq                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  883 | Bellanca Wittier         | 1998 | San Lorenzo               | Guatemala                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  884 | Melantha Schulz          | 2006 | R├¡o Ceballos             | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  885 | Kimball Pevreal          | 1992 | Mouz├íki                  | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  886 | Austina Ingliby          | 2007 | PtghunkΓÇÖ                | Armenia                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  887 | Helsa Yate               | 2005 | Balading                  | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  888 | Free Scrivenor           | 2005 | Alta Gracia               | Argentina                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  889 | Roselia Townsend         | 1996 | Selouane                  | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  890 | Karoly Hurry             | 2006 | Bordeaux                  | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  891 | Joella Shelmardine       | 2012 | Gaofeng                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  892 | Evelin Brinkler          | 1990 | Heiiyugou                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  893 | Leeanne Studders         | 1992 | Artemisa                  | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  894 | Sherie Creech            | 2006 | Chipoka                   | Malawi                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  895 | Andeee Boatwright        | 1998 | Lysekil                   | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  896 | Didi Matyas              | 2011 | Yangong                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  897 | Lonnie Kyles             | 2007 | Midrand                   | South Africa                                 |  1 |           1 | 0000-00-00 00:00:00 |
|  898 | Noland Corrett           | 1992 | Stykkish├│lmur            | Iceland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  899 | Lucretia Daglish         | 1995 | Petropavlovsk             | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  900 | Isis Oxburgh             | 1990 | Iwakura                   | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  901 | Patricio Ledgley         | 2009 | Somdet                    | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  902 | Kamilah Buttress         | 1997 | Quanling                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  903 | Caren Luttgert           | 2006 | Annino                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  904 | Helena Molloy            | 2004 | Rawaapu                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  905 | Torrey Gilphillan        | 1999 | N├¡kaia                   | Greece                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  906 | Koralle Raddon           | 2012 | Fojo                      | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  907 | Darlene Dallman          | 1997 | Zhezqazghan               | Kazakhstan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  908 | Audrey Shekle            | 1987 | Budapest                  | Hungary                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  909 | Sibby Ferruzzi           | 1990 | Shoushan                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  910 | Colby Cunnell            | 2003 | Asahbadung                | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  911 | Axel Throughton          | 1991 | Verbilki                  | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  912 | Roslyn Domb              | 1986 | Xingbin                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  913 | Hermia Badland           | 1996 | Melfi                     | Chad                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  914 | Fionnula Alp             | 2009 | Yuandun                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  915 | Rodina Jensen            | 2008 | Chicago                   | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  916 | Ronnie Withams           | 2001 | PuΓÇÖer                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  917 | Shelli Ridd              | 2011 | Kolbano                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  918 | Burton MacGillivrie      | 1997 | Xianyi                    | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  919 | Leah Margiotta           | 2007 | Pasto                     | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  920 | Viviana Porrett          | 1985 | Kaz                       | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  921 | Winn Eliesco             | 1989 | Changxingbao              | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  922 | Kristoffer Folker        | 2005 | Saint-Nazaire             | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  923 | Patton Peddel            | 2008 | Ma┼ƒta─ƒa                 | Azerbaijan                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  924 | Skipp Mecozzi            | 2008 | Bulakbanjar               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  925 | Nollie McCosker          | 1984 | Caherconlish              | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  926 | Schuyler Benford         | 1994 | Malamig                   | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  927 | Shurwood Lankford        | 2005 | Lalmanirhat               | Bangladesh                                   |  1 |           1 | 0000-00-00 00:00:00 |
|  928 | Kennan Hue               | 2011 | Comapa                    | Guatemala                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  929 | Daffie MacCaughey        | 1990 | Winong                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  930 | Brocky Klehn             | 2009 | Jatibonico                | Cuba                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  931 | Frederigo MacComiskey    | 1990 | Devon                     | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  932 | Scarlet Corteis          | 2007 | Sobradinho                | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  933 | Lorene Milbank           | 2001 | Aeka                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  934 | Devin Aspden             | 1964 | Ivoti                     | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  935 | Tove Huxley              | 1996 | Sokobanteng               | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  936 | Zitella Gauntley         | 1998 | Hebeitun                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  937 | Carrol Edwardes          | 1995 | Rumyantsevo               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  938 | Ross Blodgett            | 2011 | Fonta├¡nhas               | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  939 | Tuckie Brydon            | 2009 | Sopo                      | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  940 | Elyssa Howorth           | 2006 | Cheping                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  941 | Reggi Radenhurst         | 1996 | Ska┼éa                    | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  942 | Amble Roz                | 2003 | Seka                      | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  943 | Ricki Nolte              | 1995 | Rathwire                  | Ireland                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  944 | Rubia Arnall             | 2004 | Ayrihuanca                | Peru                                         |  1 |           1 | 0000-00-00 00:00:00 |
|  945 | Janine Sturdey           | 2008 | Longwy                    | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  946 | Opal Stefanovic          | 2009 | Trebisht-Mu├ºin├½         | Albania                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  947 | Urbanus Hanlin           | 1990 | Kansas City               | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  948 | Tish Hazlehurst          | 2007 | Gandi                     | Nigeria                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  949 | Ciro Jagson              | 2006 | T┼ìgane                   | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  950 | Consolata Pindar         | 1994 | Lom Sak                   | Thailand                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  951 | Jandy Schoroder          | 1993 | T─ündo Mittha Kh─ün       | Pakistan                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  952 | Caryn Fetters            | 2009 | Qiwen                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  953 | Merwyn Cadwallader       | 2008 | Minien East               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  954 | Minnaminnie Armin        | 2005 | Ivanteyevka               | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  955 | Uta Cuttles              | 2010 | Neebing                   | Canada                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  956 | Suki Hamshere            | 2004 | Jiujiang                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  957 | Brion Wasiel             | 1989 | Guandian                  | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  958 | Hilliary Foot            | 2008 | Tuofeng                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  959 | Renee Fernier            | 1999 | Villeta                   | Colombia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  960 | Ortensia Luxon           | 2010 | Oxel├╢sund                | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  961 | Lind Ewells              | 2001 | Boncong                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  962 | Carlee Phillippo         | 1995 | Tapada das Merc├¬s        | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  963 | Madelene Goold           | 1995 | R├╢nninge                 | Sweden                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  964 | Gwenore Joye             | 2006 | Nova Igua├ºu              | Brazil                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  965 | Fredia Beglin            | 2001 | Lelystad                  | Netherlands                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  966 | Dee dee McCafferky       | 2003 | Xitan                     | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  967 | Pippy Bogey              | 2007 | Piancheng                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  968 | Cal Warriner             | 2012 | Genting                   | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  969 | Jerrilee Wearn           | 1993 | Montpellier               | France                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  970 | Batsheva Gipps           | 1993 | Chengdong                 | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  971 | Huntley Scarasbrick      | 2011 | Kuybyshevskiy Zaton       | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  972 | Carlie Pannett           | 2013 | Amado Nervo               | Mexico                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  973 | Deidre Nussen            | 1991 | Po┼╛arevac                | Serbia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  974 | Romeo Tullett            | 2012 | Pergan                    | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  975 | Mahmoud Matej            | 2006 | Shizuoka-shi              | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  976 | Wallis Coleman           | 2010 | Kaloyanovo                | Bulgaria                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  977 | Adelaide Ilem            | 2013 | Bacnor East               | Philippines                                  |  1 |           1 | 0000-00-00 00:00:00 |
|  978 | Myca Minghetti           | 2003 | Oslo                      | Norway                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  979 | Meade Battista           | 2004 | Talashkino                | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  980 | Stirling Halfacree       | 2002 | Luka nad Jihlavou         | Czech Republic                               |  1 |           1 | 0000-00-00 00:00:00 |
|  981 | Adam Fyfield             | 2009 | Boavista                  | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  982 | Xylia Arkley             | 1997 | Wonda                     | Indonesia                                    |  1 |           1 | 0000-00-00 00:00:00 |
|  983 | Chaddy Ertel             | 1991 | Kuala Lumpur              | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  984 | Daniel Manwell           | 1971 | Komb├½si                  | Albania                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  985 | Catina Trivett           | 1998 | Kalabo                    | Zambia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  986 | Beth Hedger              | 1998 | Portland                  | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  987 | Cicily Tapsfield         | 1992 | ┼Üwiecie                  | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  988 | Vally Cadlock            | 1998 | Praia da Vagueira         | Portugal                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  989 | Colas Munkton            | 1998 | Goulmima                  | Morocco                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  990 | Bart Geikie              | 1998 | Nanping                   | China                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  991 | Anatola Aldin            | 2007 | Lakkha N├½vre             | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  992 | Allx Dancey              | 2008 | Inkerman                  | Ukraine                                      |  1 |           1 | 0000-00-00 00:00:00 |
|  993 | Kathryne Borman          | 1989 | Ovacik                    | Turkey                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  994 | Shawnee Matveichev       | 2005 | Grz─Öska                  | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  995 | Portia Tredget           | 2008 | Ashm┼½n                   | Egypt                                        |  1 |           1 | 0000-00-00 00:00:00 |
|  996 | Louisette Banishevitz    | 2004 | Reda                      | Poland                                       |  1 |           1 | 0000-00-00 00:00:00 |
|  997 | Meris Ropkes             | 1996 | Memphis                   | United States                                |  1 |           1 | 0000-00-00 00:00:00 |
|  998 | Bailey Newlyn            | 1999 | Shah Alam                 | Malaysia                                     |  1 |           1 | 0000-00-00 00:00:00 |
|  999 | Mary Baldetti            | 2003 | Mirnyy                    | Russia                                       |  1 |           1 | 0000-00-00 00:00:00 |
| 1000 | Agna Palley              | 1993 | ┼îyama                    | Japan                                        |  1 |           1 | 0000-00-00 00:00:00 |
+------+--------------------------+------+---------------------------+----------------------------------------------+----+-------------+---------------------+
1000 rows in set (0.017 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> STRAIGTH JOIN orders
    -> WHERE orders.customer_id = 1
    -> LIMIT 10;
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
| id | name              | age  | city        | country      | id | customer_id | date                |
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
|  1 | Case Tainton      | 2008 | Karanganyar | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|  2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia       |  1 |           1 | 0000-00-00 00:00:00 |
|  3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|  4 | Rosalie Cosson    | 2000 | Chojnice    | Poland       |  1 |           1 | 0000-00-00 00:00:00 |
|  5 | Benedetto Girling | 1973 | Pining      | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|  6 | Susann Siccombe   | 2011 | Pagak       | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|  7 | Carmel Yerborn    | 1993 | Unaizah     | Saudi Arabia |  1 |           1 | 0000-00-00 00:00:00 |
|  8 | Iago Richardeau   | 1994 | M├╝llendorf | Luxembourg   |  1 |           1 | 0000-00-00 00:00:00 |
|  9 | Alene Thurman     | 2007 | Munjungan   | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
| 10 | Ashby Ovenell     | 2006 | Ketangi     | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
10 rows in set (0.000 sec)

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

MariaDB [latihan_mysql]> DESCRIBE orders;
+-------------+-----------+------+-----+---------------------+-------------------------------+
| Field       | Type      | Null | Key | Default             | Extra                         |
+-------------+-----------+------+-----+---------------------+-------------------------------+
| id          | int(11)   | NO   | PRI | NULL                | auto_increment                |
| customer_id | int(11)   | NO   | MUL | NULL                |                               |
| date        | timestamp | NO   |     | current_timestamp() | on update current_timestamp() |
+-------------+-----------+------+-----+---------------------+-------------------------------+
3 rows in set (0.015 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> LIMIT 3;
+----+-----------------+------+-------------+-----------+
| id | name            | age  | city        | country   |
+----+-----------------+------+-------------+-----------+
|  1 | Case Tainton    | 2008 | Karanganyar | Indonesia |
|  2 | Pierre Chelnam  | 2007 | Kalengwa    | Zambia    |
|  3 | Alphonso Kunzel | 2002 | Cigarogol   | Indonesia |
+----+-----------------+------+-------------+-----------+
3 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT *
    -> FROM customers AS a INNER JOIN orders AS b
    -> ON a.id = b.customer_id
    -> LIMIT 10;
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
| id | name              | age  | city        | country      | id | customer_id | date                |
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
|  1 | Case Tainton      | 2008 | Karanganyar | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|  2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia       |  2 |           2 | 0000-00-00 00:00:00 |
|  3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia    |  3 |           3 | 0000-00-00 00:00:00 |
|  4 | Rosalie Cosson    | 2000 | Chojnice    | Poland       |  4 |           4 | 0000-00-00 00:00:00 |
|  5 | Benedetto Girling | 1973 | Pining      | Indonesia    |  5 |           5 | 0000-00-00 00:00:00 |
|  6 | Susann Siccombe   | 2011 | Pagak       | Indonesia    |  6 |           6 | 0000-00-00 00:00:00 |
|  7 | Carmel Yerborn    | 1993 | Unaizah     | Saudi Arabia |  7 |           7 | 0000-00-00 00:00:00 |
|  8 | Iago Richardeau   | 1994 | M├╝llendorf | Luxembourg   |  8 |           8 | 0000-00-00 00:00:00 |
|  9 | Alene Thurman     | 2007 | Munjungan   | Indonesia    |  9 |           9 | 0000-00-00 00:00:00 |
| 10 | Ashby Ovenell     | 2006 | Ketangi     | Indonesia    | 10 |          10 | 0000-00-00 00:00:00 |
+----+-------------------+------+-------------+--------------+----+-------------+---------------------+
10 rows in set (0.003 sec)

MariaDB [latihan_mysql]> SELECT *
    -> FROM customers AS a LEFT JOIN orders AS b
    -> ON a.id = b.customer_id
    -> LIMIT 10;
+----+-------------------+------+-------------+--------------+------+-------------+---------------------+
| id | name              | age  | city        | country      | id   | customer_id | date                |
+----+-------------------+------+-------------+--------------+------+-------------+---------------------+
|  1 | Case Tainton      | 2008 | Karanganyar | Indonesia    |    1 |           1 | 0000-00-00 00:00:00 |
|  2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia       |    2 |           2 | 0000-00-00 00:00:00 |
|  3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia    |    3 |           3 | 0000-00-00 00:00:00 |
|  4 | Rosalie Cosson    | 2000 | Chojnice    | Poland       |    4 |           4 | 0000-00-00 00:00:00 |
|  5 | Benedetto Girling | 1973 | Pining      | Indonesia    |    5 |           5 | 0000-00-00 00:00:00 |
|  6 | Susann Siccombe   | 2011 | Pagak       | Indonesia    |    6 |           6 | 0000-00-00 00:00:00 |
|  7 | Carmel Yerborn    | 1993 | Unaizah     | Saudi Arabia |    7 |           7 | 0000-00-00 00:00:00 |
|  8 | Iago Richardeau   | 1994 | M├╝llendorf | Luxembourg   |    8 |           8 | 0000-00-00 00:00:00 |
|  9 | Alene Thurman     | 2007 | Munjungan   | Indonesia    |    9 |           9 | 0000-00-00 00:00:00 |
| 10 | Ashby Ovenell     | 2006 | Ketangi     | Indonesia    |   10 |          10 | 0000-00-00 00:00:00 |
+----+-------------------+------+-------------+--------------+------+-------------+---------------------+
10 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT *
    -> FROM customers AS a RIGHT JOIN orders AS b
    -> ON a.id = b.customer_id
    -> LIMIT 10;
+------+-------------------+------+-------------+--------------+----+-------------+---------------------+
| id   | name              | age  | city        | country      | id | customer_id | date                |
+------+-------------------+------+-------------+--------------+----+-------------+---------------------+
|    1 | Case Tainton      | 2008 | Karanganyar | Indonesia    |  1 |           1 | 0000-00-00 00:00:00 |
|    2 | Pierre Chelnam    | 2007 | Kalengwa    | Zambia       |  2 |           2 | 0000-00-00 00:00:00 |
|    3 | Alphonso Kunzel   | 2002 | Cigarogol   | Indonesia    |  3 |           3 | 0000-00-00 00:00:00 |
|    4 | Rosalie Cosson    | 2000 | Chojnice    | Poland       |  4 |           4 | 0000-00-00 00:00:00 |
|    5 | Benedetto Girling | 1973 | Pining      | Indonesia    |  5 |           5 | 0000-00-00 00:00:00 |
|    6 | Susann Siccombe   | 2011 | Pagak       | Indonesia    |  6 |           6 | 0000-00-00 00:00:00 |
|    7 | Carmel Yerborn    | 1993 | Unaizah     | Saudi Arabia |  7 |           7 | 0000-00-00 00:00:00 |
|    8 | Iago Richardeau   | 1994 | M├╝llendorf | Luxembourg   |  8 |           8 | 0000-00-00 00:00:00 |
|    9 | Alene Thurman     | 2007 | Munjungan   | Indonesia    |  9 |           9 | 0000-00-00 00:00:00 |
|   10 | Ashby Ovenell     | 2006 | Ketangi     | Indonesia    | 10 |          10 | 0000-00-00 00:00:00 |
+------+-------------------+------+-------------+--------------+----+-------------+---------------------+
10 rows in set (0.000 sec)

MariaDB [latihan_mysql]> SELECT name, date
    -> FROM customers AS a RIGHT JOIN orders AS b
    -> ON a.id = b.customer_id
    -> ;
+--------------------------+---------------------+
| name                     | date                |
+--------------------------+---------------------+
| Case Tainton             | 0000-00-00 00:00:00 |
| Pierre Chelnam           | 0000-00-00 00:00:00 |
| Alphonso Kunzel          | 0000-00-00 00:00:00 |
| Rosalie Cosson           | 0000-00-00 00:00:00 |
| Benedetto Girling        | 0000-00-00 00:00:00 |
| Susann Siccombe          | 0000-00-00 00:00:00 |
| Carmel Yerborn           | 0000-00-00 00:00:00 |
| Iago Richardeau          | 0000-00-00 00:00:00 |
| Alene Thurman            | 0000-00-00 00:00:00 |
| Ashby Ovenell            | 0000-00-00 00:00:00 |
| Nananne Gilford          | 0000-00-00 00:00:00 |
| Clementina Caldow        | 0000-00-00 00:00:00 |
| Zola Ingham              | 0000-00-00 00:00:00 |
| Dorisa Guille            | 0000-00-00 00:00:00 |
| Lizbeth Watterson        | 0000-00-00 00:00:00 |
| Tabor Costigan           | 0000-00-00 00:00:00 |
| Thurston Crannis         | 0000-00-00 00:00:00 |
| Crichton Kinman          | 0000-00-00 00:00:00 |
| Fancy McCotter           | 0000-00-00 00:00:00 |
| Waylon Hassall           | 0000-00-00 00:00:00 |
| Lind Brittle             | 0000-00-00 00:00:00 |
| Binky Boater             | 0000-00-00 00:00:00 |
| Emera Sinkin             | 0000-00-00 00:00:00 |
| Ezra Claasen             | 0000-00-00 00:00:00 |
| Thia Perrins             | 0000-00-00 00:00:00 |
| Curt Ravenscraft         | 0000-00-00 00:00:00 |
| Zea Luther               | 0000-00-00 00:00:00 |
| Tally Arzu               | 0000-00-00 00:00:00 |
| Hew Dewicke              | 0000-00-00 00:00:00 |
| Nina Oultram             | 0000-00-00 00:00:00 |
| Alie Kirkup              | 0000-00-00 00:00:00 |
| Della Vanelli            | 0000-00-00 00:00:00 |
| Lexine De Angelo         | 0000-00-00 00:00:00 |
| Lonni McCaw              | 0000-00-00 00:00:00 |
| Linda Keneleyside        | 0000-00-00 00:00:00 |
| Mamie Skilbeck           | 0000-00-00 00:00:00 |
| Mag Kruger               | 0000-00-00 00:00:00 |
| Nye Morfett              | 0000-00-00 00:00:00 |
| Kaylil Arnaudot          | 0000-00-00 00:00:00 |
| Alain Emblow             | 0000-00-00 00:00:00 |
| Stephana Ivashin         | 0000-00-00 00:00:00 |
| Jenica Satterfitt        | 0000-00-00 00:00:00 |
| Carney Duffill           | 0000-00-00 00:00:00 |
| Leisha Durrans           | 0000-00-00 00:00:00 |
| Corabel Deval            | 0000-00-00 00:00:00 |
| Simonette Delcastel      | 0000-00-00 00:00:00 |
| Babara Scoggins          | 0000-00-00 00:00:00 |
| Glenine Gilkison         | 0000-00-00 00:00:00 |
| Hendrika Harbert         | 0000-00-00 00:00:00 |
| Maddie Clulow            | 0000-00-00 00:00:00 |
| Sibylla Garter           | 0000-00-00 00:00:00 |
| Alexandro Roll           | 0000-00-00 00:00:00 |
| Roselia Arnold           | 0000-00-00 00:00:00 |
| Valeria Pagan            | 0000-00-00 00:00:00 |
| Mellisent Elcoate        | 0000-00-00 00:00:00 |
| Joanie Lorek             | 0000-00-00 00:00:00 |
| Shurlock Lambersen       | 0000-00-00 00:00:00 |
| Merell Ellams            | 0000-00-00 00:00:00 |
| Deane Fredi              | 0000-00-00 00:00:00 |
| Orlan Paula              | 0000-00-00 00:00:00 |
| Bellina Kerley           | 0000-00-00 00:00:00 |
| Delmore Lyddiatt         | 0000-00-00 00:00:00 |
| Janey Gelsthorpe         | 0000-00-00 00:00:00 |
| Ermin Durram             | 0000-00-00 00:00:00 |
| Karim Murrells           | 0000-00-00 00:00:00 |
| Meyer Machin             | 0000-00-00 00:00:00 |
| Karen Poel               | 0000-00-00 00:00:00 |
| Belva McCambrois         | 0000-00-00 00:00:00 |
| Astrix Boyde             | 0000-00-00 00:00:00 |
| Clem Cowland             | 0000-00-00 00:00:00 |
| Reba Harget              | 0000-00-00 00:00:00 |
| Fabian Charge            | 0000-00-00 00:00:00 |
| Pembroke De Carteret     | 0000-00-00 00:00:00 |
| Emmanuel Bernardini      | 0000-00-00 00:00:00 |
| Giorgi Solley            | 0000-00-00 00:00:00 |
| Hali Humburton           | 0000-00-00 00:00:00 |
| Garrik Garvagh           | 0000-00-00 00:00:00 |
| Dory Brevetor            | 0000-00-00 00:00:00 |
| Staford Message          | 0000-00-00 00:00:00 |
| Barry Allkins            | 0000-00-00 00:00:00 |
| Boyd Candie              | 0000-00-00 00:00:00 |
| Donella Dahl             | 0000-00-00 00:00:00 |
| Terrence Huitson         | 0000-00-00 00:00:00 |
| Scarlet Shewan           | 0000-00-00 00:00:00 |
| Misty Hane               | 0000-00-00 00:00:00 |
| Ralf Gauler              | 0000-00-00 00:00:00 |
| Malina Gerard            | 0000-00-00 00:00:00 |
| Delores Ishaki           | 0000-00-00 00:00:00 |
| Norri Laherty            | 0000-00-00 00:00:00 |
| Zorana Luciani           | 0000-00-00 00:00:00 |
| Devonna Carreyette       | 0000-00-00 00:00:00 |
| Cordey Castagneri        | 0000-00-00 00:00:00 |
| Elsy Comrie              | 0000-00-00 00:00:00 |
| Scotti Goosnell          | 0000-00-00 00:00:00 |
| Hazel Dury               | 0000-00-00 00:00:00 |
| Kippie Jales             | 0000-00-00 00:00:00 |
| Juliette McCombe         | 0000-00-00 00:00:00 |
| La verne Akenhead        | 0000-00-00 00:00:00 |
| Harvey Clarricoates      | 0000-00-00 00:00:00 |
| Broderic Balke           | 0000-00-00 00:00:00 |
| Chryste Damrell          | 0000-00-00 00:00:00 |
| Sabrina Havelin          | 0000-00-00 00:00:00 |
| Kaylyn Dugan             | 0000-00-00 00:00:00 |
| Gisela Wike              | 0000-00-00 00:00:00 |
| Meridith Schooley        | 0000-00-00 00:00:00 |
| Mignonne Sindell         | 0000-00-00 00:00:00 |
| Norry Louche             | 0000-00-00 00:00:00 |
| Vernen Mathou            | 0000-00-00 00:00:00 |
| Karrie Bertl             | 0000-00-00 00:00:00 |
| Saloma Penbarthy         | 0000-00-00 00:00:00 |
| Hamilton Gascoine        | 0000-00-00 00:00:00 |
| Hedi Garralts            | 0000-00-00 00:00:00 |
| Glyn McLanachan          | 0000-00-00 00:00:00 |
| Cynthia Spafford         | 0000-00-00 00:00:00 |
| Marlane Stratiff         | 0000-00-00 00:00:00 |
| Blondy Ure               | 0000-00-00 00:00:00 |
| Annette Leadston         | 0000-00-00 00:00:00 |
| Rollie Blaik             | 0000-00-00 00:00:00 |
| Baillie Nickols          | 0000-00-00 00:00:00 |
| Vale Geratasch           | 0000-00-00 00:00:00 |
| Dana Murr                | 0000-00-00 00:00:00 |
| Maridel Gozzett          | 0000-00-00 00:00:00 |
| Randee Chesney           | 0000-00-00 00:00:00 |
| Jens Bruyet              | 0000-00-00 00:00:00 |
| Shel Wellstood           | 0000-00-00 00:00:00 |
| Ashil Dubock             | 0000-00-00 00:00:00 |
| Bobbette Thunderchief    | 0000-00-00 00:00:00 |
| Teador Ioannidis         | 0000-00-00 00:00:00 |
| Orran Bartoszek          | 0000-00-00 00:00:00 |
| Yul Andreucci            | 0000-00-00 00:00:00 |
| Early Antoshin           | 0000-00-00 00:00:00 |
| Ewell Sawden             | 0000-00-00 00:00:00 |
| Lindsey McNelis          | 0000-00-00 00:00:00 |
| Bay Brunker              | 0000-00-00 00:00:00 |
| Melody Fleeman           | 0000-00-00 00:00:00 |
| Sybyl Dibdin             | 0000-00-00 00:00:00 |
| Linus Pinchback          | 0000-00-00 00:00:00 |
| Ira Hanselman            | 0000-00-00 00:00:00 |
| Berkie Groome            | 0000-00-00 00:00:00 |
| Paloma Vinecombe         | 0000-00-00 00:00:00 |
| Brittne Ledrane          | 0000-00-00 00:00:00 |
| Fawnia Jeske             | 0000-00-00 00:00:00 |
| Fannie Featherstonhaugh  | 0000-00-00 00:00:00 |
| Kathie Pullan            | 0000-00-00 00:00:00 |
| Minnie Le-Good           | 0000-00-00 00:00:00 |
| Kristofer Bardwell       | 0000-00-00 00:00:00 |
| Ursula Jocelyn           | 0000-00-00 00:00:00 |
| Edy Clarey               | 0000-00-00 00:00:00 |
| Debi Dunbavin            | 0000-00-00 00:00:00 |
| Jeralee Bettenay         | 0000-00-00 00:00:00 |
| Orazio Erangey           | 0000-00-00 00:00:00 |
| Ardelis Casini           | 0000-00-00 00:00:00 |
| Dimitry Maddox           | 0000-00-00 00:00:00 |
| Yehudi Jackways          | 0000-00-00 00:00:00 |
| Erhard Pecha             | 0000-00-00 00:00:00 |
| Yalonda Housecraft       | 0000-00-00 00:00:00 |
| Finn Volkes              | 0000-00-00 00:00:00 |
| Melessa Mathivat         | 0000-00-00 00:00:00 |
| Trueman Ohms             | 0000-00-00 00:00:00 |
| Margarethe De La Hay     | 0000-00-00 00:00:00 |
| Mommy Scollard           | 0000-00-00 00:00:00 |
| Brit Leckenby            | 0000-00-00 00:00:00 |
| Kip Bingall              | 0000-00-00 00:00:00 |
| Catherina Grinnikov      | 0000-00-00 00:00:00 |
| Micky Ladel              | 0000-00-00 00:00:00 |
| Vevay Van Der Weedenburg | 0000-00-00 00:00:00 |
| Micky Lendrem            | 0000-00-00 00:00:00 |
| Arin Mussard             | 0000-00-00 00:00:00 |
| Miof mela Calvie         | 0000-00-00 00:00:00 |
| Kinny Scogings           | 0000-00-00 00:00:00 |
| Tarra Caldecott          | 0000-00-00 00:00:00 |
| Rudolph Craydon          | 0000-00-00 00:00:00 |
| Meier Greystoke          | 0000-00-00 00:00:00 |
| Isac Fettis              | 0000-00-00 00:00:00 |
| Zed Timms                | 0000-00-00 00:00:00 |
| Phillida Tome            | 0000-00-00 00:00:00 |
| Ganny Blenkinship        | 0000-00-00 00:00:00 |
| Annissa Venus            | 0000-00-00 00:00:00 |
| Tammy Rowntree           | 0000-00-00 00:00:00 |
| Tomasina Gatenby         | 0000-00-00 00:00:00 |
| Jenelle Bodle            | 0000-00-00 00:00:00 |
| Caren Barron             | 0000-00-00 00:00:00 |
| Rollins Timlin           | 0000-00-00 00:00:00 |
| Millard Mandy            | 0000-00-00 00:00:00 |
| Ajay Schoular            | 0000-00-00 00:00:00 |
| Pierson Tixier           | 0000-00-00 00:00:00 |
| Godfry Winspear          | 0000-00-00 00:00:00 |
| Martelle Kummerlowe      | 0000-00-00 00:00:00 |
| Miguela Joint            | 0000-00-00 00:00:00 |
| Heinrik O'Neill          | 0000-00-00 00:00:00 |
| Emily Mulhall            | 0000-00-00 00:00:00 |
| Costanza Risbie          | 0000-00-00 00:00:00 |
| Mirabelle Summerill      | 0000-00-00 00:00:00 |
| Harper Cantua            | 0000-00-00 00:00:00 |
| Homere Pettinger         | 0000-00-00 00:00:00 |
| Remington Deane          | 0000-00-00 00:00:00 |
| Chaddy Corradini         | 0000-00-00 00:00:00 |
| Trip Ferrarotti          | 0000-00-00 00:00:00 |
| Giuseppe Semmence        | 0000-00-00 00:00:00 |
| Tiff Vokes               | 0000-00-00 00:00:00 |
| Naomi Klasen             | 0000-00-00 00:00:00 |
| Angelico Ellesworth      | 0000-00-00 00:00:00 |
| Binky Stoner             | 0000-00-00 00:00:00 |
| Jonell Goldster          | 0000-00-00 00:00:00 |
| Salli Ybarra             | 0000-00-00 00:00:00 |
| Doreen Terram            | 0000-00-00 00:00:00 |
| Morena Rohlfs            | 0000-00-00 00:00:00 |
| Ilysa Dametti            | 0000-00-00 00:00:00 |
| Kain Kersaw              | 0000-00-00 00:00:00 |
| Teddy Clulow             | 0000-00-00 00:00:00 |
| Pearla Gabbitus          | 0000-00-00 00:00:00 |
| Bastien Jime             | 0000-00-00 00:00:00 |
| Faye Seiter              | 0000-00-00 00:00:00 |
| Merlina Swatland         | 0000-00-00 00:00:00 |
| Dottie Demschke          | 0000-00-00 00:00:00 |
| Dorise Burnyeat          | 0000-00-00 00:00:00 |
| Almira Hooban            | 0000-00-00 00:00:00 |
| Baron Bashford           | 0000-00-00 00:00:00 |
| Randie Cupper            | 0000-00-00 00:00:00 |
| Elayne Raymond           | 0000-00-00 00:00:00 |
| Merv Buckley             | 0000-00-00 00:00:00 |
| Britney Redihough        | 0000-00-00 00:00:00 |
| Berrie Farndale          | 0000-00-00 00:00:00 |
| Flossi Vennard           | 0000-00-00 00:00:00 |
| Evered Varne             | 0000-00-00 00:00:00 |
| Percival Colegate        | 0000-00-00 00:00:00 |
| Edythe Brashaw           | 0000-00-00 00:00:00 |
| Gusti Barajas            | 0000-00-00 00:00:00 |
| Eberto Leibold           | 0000-00-00 00:00:00 |
| Alfred Andrysek          | 0000-00-00 00:00:00 |
| Tyler Iggulden           | 0000-00-00 00:00:00 |
| Gertrudis Lorand         | 0000-00-00 00:00:00 |
| Umberto Mammatt          | 0000-00-00 00:00:00 |
| Joel Coulthard           | 0000-00-00 00:00:00 |
| Renado Robertsson        | 0000-00-00 00:00:00 |
| Wright Spearett          | 0000-00-00 00:00:00 |
| Dan Scarlin              | 0000-00-00 00:00:00 |
| Boote Gierth             | 0000-00-00 00:00:00 |
| Nadine Adam              | 0000-00-00 00:00:00 |
| Willabella Strasse       | 0000-00-00 00:00:00 |
| Mariele Shuker           | 0000-00-00 00:00:00 |
| Alyss Bosher             | 0000-00-00 00:00:00 |
| Riobard Danson           | 0000-00-00 00:00:00 |
| Tirrell Crampsey         | 0000-00-00 00:00:00 |
| Sayre Menghi             | 0000-00-00 00:00:00 |
| Eberto Hallowell         | 0000-00-00 00:00:00 |
| Rochella Ciric           | 0000-00-00 00:00:00 |
| Kort Burgott             | 0000-00-00 00:00:00 |
| Edgard Condy             | 0000-00-00 00:00:00 |
| Rori Benbough            | 0000-00-00 00:00:00 |
| Agosto Durnford          | 0000-00-00 00:00:00 |
| Joby Reilly              | 0000-00-00 00:00:00 |
| Drew Challace            | 0000-00-00 00:00:00 |
| Fawn Blethin             | 0000-00-00 00:00:00 |
| Kain Dalziel             | 0000-00-00 00:00:00 |
| Lizbeth Inge             | 0000-00-00 00:00:00 |
| Roseline Beltzner        | 0000-00-00 00:00:00 |
| Roxi Woodyer             | 0000-00-00 00:00:00 |
| Carmel Edney             | 0000-00-00 00:00:00 |
| Gallard Birkmyr          | 0000-00-00 00:00:00 |
| Kristyn Tupman           | 0000-00-00 00:00:00 |
| Guenevere Tippetts       | 0000-00-00 00:00:00 |
| Devin Youthead           | 0000-00-00 00:00:00 |
| Anne-corinne La Torre    | 0000-00-00 00:00:00 |
| Lynde Eldershaw          | 0000-00-00 00:00:00 |
| Timmy Stroband           | 0000-00-00 00:00:00 |
| Karlie Kupec             | 0000-00-00 00:00:00 |
| Myrilla Thorby           | 0000-00-00 00:00:00 |
| Filide Feenan            | 0000-00-00 00:00:00 |
| Vanya Cristofari         | 0000-00-00 00:00:00 |
| Corey Shavel             | 0000-00-00 00:00:00 |
| Brier Lillecrop          | 0000-00-00 00:00:00 |
| Hewe Askie               | 0000-00-00 00:00:00 |
| Jesse Splaven            | 0000-00-00 00:00:00 |
| Giffard Kneafsey         | 0000-00-00 00:00:00 |
| Basia Strevens           | 0000-00-00 00:00:00 |
| Pen Hallstone            | 0000-00-00 00:00:00 |
| Vere Fitzharris          | 0000-00-00 00:00:00 |
| Ingamar Dowdell          | 0000-00-00 00:00:00 |
| Gabbie Wardhaugh         | 0000-00-00 00:00:00 |
| Lorinda Garling          | 0000-00-00 00:00:00 |
| Allison Willard          | 0000-00-00 00:00:00 |
| Maryanna Eales           | 0000-00-00 00:00:00 |
| Colver Coney             | 0000-00-00 00:00:00 |
| Spencer Friedank         | 0000-00-00 00:00:00 |
| Jackie Gath              | 0000-00-00 00:00:00 |
| Bentley Harcombe         | 0000-00-00 00:00:00 |
| Blane Grissett           | 0000-00-00 00:00:00 |
| Dorree Chieco            | 0000-00-00 00:00:00 |
| Coleen Wordesworth       | 0000-00-00 00:00:00 |
| Ruthie McCrisken         | 0000-00-00 00:00:00 |
| Gaven Wickersham         | 0000-00-00 00:00:00 |
| Opaline Levitt           | 0000-00-00 00:00:00 |
| Kimbra Quaintance        | 0000-00-00 00:00:00 |
| Pierette Stickings       | 0000-00-00 00:00:00 |
| Liuka Brogioni           | 0000-00-00 00:00:00 |
| Munroe Mowbray           | 0000-00-00 00:00:00 |
| Salomone Packham         | 0000-00-00 00:00:00 |
| Meier Feaks              | 0000-00-00 00:00:00 |
| Lazaro Silburn           | 0000-00-00 00:00:00 |
| Darius Bog               | 0000-00-00 00:00:00 |
| Theresita Wildman        | 0000-00-00 00:00:00 |
| Tommy De Luna            | 0000-00-00 00:00:00 |
| Dave Sidsaff             | 0000-00-00 00:00:00 |
| Ann-marie Cubin          | 0000-00-00 00:00:00 |
| Daryl Vagg               | 0000-00-00 00:00:00 |
| Hall Rustan              | 0000-00-00 00:00:00 |
| Tymothy Yaneev           | 0000-00-00 00:00:00 |
| Bennie Paniman           | 0000-00-00 00:00:00 |
| Ebonee Rowsel            | 0000-00-00 00:00:00 |
| Hermy Plaunch            | 0000-00-00 00:00:00 |
| Oralee Deacock           | 0000-00-00 00:00:00 |
| Birk Budibent            | 0000-00-00 00:00:00 |
| Hyman Gwillym            | 0000-00-00 00:00:00 |
| Dennis McGivena          | 0000-00-00 00:00:00 |
| Aida Semerad             | 0000-00-00 00:00:00 |
| Libbi Drexel             | 0000-00-00 00:00:00 |
| Nerta MacColgan          | 0000-00-00 00:00:00 |
| Gunner Jonuzi            | 0000-00-00 00:00:00 |
| Tasia Styche             | 0000-00-00 00:00:00 |
| Giacopo Challace         | 0000-00-00 00:00:00 |
| Bertina Batchelor        | 0000-00-00 00:00:00 |
| Madelin Turbat           | 0000-00-00 00:00:00 |
| Frederigo Karadzas       | 0000-00-00 00:00:00 |
| Mohandas Waterhowse      | 0000-00-00 00:00:00 |
| Randa Serjeantson        | 0000-00-00 00:00:00 |
| Tiffie Cardis            | 0000-00-00 00:00:00 |
| Alfredo Franzman         | 0000-00-00 00:00:00 |
| Amy Pikesley             | 0000-00-00 00:00:00 |
| Wash Burrow              | 0000-00-00 00:00:00 |
| Chuck Piddington         | 0000-00-00 00:00:00 |
| Pearle Keitch            | 0000-00-00 00:00:00 |
| Corry Halsall            | 0000-00-00 00:00:00 |
| Megan Mc Ilwrick         | 0000-00-00 00:00:00 |
| Joaquin Gager            | 0000-00-00 00:00:00 |
| Desiri Temple            | 0000-00-00 00:00:00 |
| Pavel Beslier            | 0000-00-00 00:00:00 |
| Calley Ellis             | 0000-00-00 00:00:00 |
| Morlee Haugeh            | 0000-00-00 00:00:00 |
| Sergent Raleston         | 0000-00-00 00:00:00 |
| Caritta Hamshaw          | 0000-00-00 00:00:00 |
| Borg Mc-Kerley           | 0000-00-00 00:00:00 |
| Emmi Trevan              | 0000-00-00 00:00:00 |
| Janela Haquin            | 0000-00-00 00:00:00 |
| Cherye Korn              | 0000-00-00 00:00:00 |
| Francklin King           | 0000-00-00 00:00:00 |
| Delcine Dowbekin         | 0000-00-00 00:00:00 |
| Manuel Skully            | 0000-00-00 00:00:00 |
| Onida Edgehill           | 0000-00-00 00:00:00 |
| Laureen Giovannacc@i     | 0000-00-00 00:00:00 |
| Cortie Treweek           | 0000-00-00 00:00:00 |
| Estrella Egle of Germany | 0000-00-00 00:00:00 |
| Kristyn Tracey           | 0000-00-00 00:00:00 |
| Avivah Isakov            | 0000-00-00 00:00:00 |
| Teddy Mitham             | 0000-00-00 00:00:00 |
| Blake Wilkinson          | 0000-00-00 00:00:00 |
| Paton Lightewood         | 0000-00-00 00:00:00 |
| Winnie Bullcock          | 0000-00-00 00:00:00 |
| Maggi Maxwell            | 0000-00-00 00:00:00 |
| Petra Colt               | 0000-00-00 00:00:00 |
| Philly Chetham           | 0000-00-00 00:00:00 |
| Dacey Danneil            | 0000-00-00 00:00:00 |
| Irena Wooster            | 0000-00-00 00:00:00 |
| Aundrea Huett            | 0000-00-00 00:00:00 |
| Gunilla Loody            | 0000-00-00 00:00:00 |
| Roldan Nesterov          | 0000-00-00 00:00:00 |
| Kellen Shipston          | 0000-00-00 00:00:00 |
| Georgetta Ogborn         | 0000-00-00 00:00:00 |
| Ame Linke                | 0000-00-00 00:00:00 |
| Tessy Ebden              | 0000-00-00 00:00:00 |
| Geneva Rowlings          | 0000-00-00 00:00:00 |
| Andonis Dight            | 0000-00-00 00:00:00 |
| Sheff Folds              | 0000-00-00 00:00:00 |
| Lucian Gillford          | 0000-00-00 00:00:00 |
| Aurora Benkin            | 0000-00-00 00:00:00 |
| Pam Boscott              | 0000-00-00 00:00:00 |
| Tybie Dunnet             | 0000-00-00 00:00:00 |
| Murial Boyer             | 0000-00-00 00:00:00 |
| Eugenius Crome           | 0000-00-00 00:00:00 |
| Arleyne Philpott         | 0000-00-00 00:00:00 |
| Marcille Hember          | 0000-00-00 00:00:00 |
| Kelsi Witch              | 0000-00-00 00:00:00 |
| Terrie Baccus            | 0000-00-00 00:00:00 |
| Andrew Gaspero           | 0000-00-00 00:00:00 |
| Peggie Jardein           | 0000-00-00 00:00:00 |
| Huey Dobrovsky           | 0000-00-00 00:00:00 |
| Jonah McGirl             | 0000-00-00 00:00:00 |
| Arnoldo Hebner           | 0000-00-00 00:00:00 |
| Sharai Bagge             | 0000-00-00 00:00:00 |
| Devin Burch              | 0000-00-00 00:00:00 |
| Ashlan Pakes             | 0000-00-00 00:00:00 |
| Joyan Killoran           | 0000-00-00 00:00:00 |
| Johna MacGahy            | 0000-00-00 00:00:00 |
| Gerard Gerring           | 0000-00-00 00:00:00 |
| Theobald Braunstein      | 0000-00-00 00:00:00 |
| Flory Leeds              | 0000-00-00 00:00:00 |
| Tabor Firle              | 0000-00-00 00:00:00 |
| Steven Slott             | 0000-00-00 00:00:00 |
| Trudey Lias              | 0000-00-00 00:00:00 |
| Normand Fergie           | 0000-00-00 00:00:00 |
| Diandra Tewes            | 0000-00-00 00:00:00 |
| Valentijn Mulrooney      | 0000-00-00 00:00:00 |
| Chlo Malsher             | 0000-00-00 00:00:00 |
| Marylynne Eadington      | 0000-00-00 00:00:00 |
| Dwain Sollom             | 0000-00-00 00:00:00 |
| Lanette McClune          | 0000-00-00 00:00:00 |
| Keven Formigli           | 0000-00-00 00:00:00 |
| Karim Wollacott          | 0000-00-00 00:00:00 |
| Thaxter Puttrell         | 0000-00-00 00:00:00 |
| Tony Buncher             | 0000-00-00 00:00:00 |
| Nathaniel Bolesworth     | 0000-00-00 00:00:00 |
| Elora Langhor            | 0000-00-00 00:00:00 |
| Smitty Heakey            | 0000-00-00 00:00:00 |
| Martin Collett           | 0000-00-00 00:00:00 |
| Fiann Maeer              | 0000-00-00 00:00:00 |
| Farra Dodimead           | 0000-00-00 00:00:00 |
| Daisi Scaysbrook         | 0000-00-00 00:00:00 |
| Bernard Beevis           | 0000-00-00 00:00:00 |
| Gabie Jako               | 0000-00-00 00:00:00 |
| Ilyssa Simonich          | 0000-00-00 00:00:00 |
| Peter Beddoe             | 0000-00-00 00:00:00 |
| Dunn Di Bartolommeo      | 0000-00-00 00:00:00 |
| Kevina Pullan            | 0000-00-00 00:00:00 |
| Flss Scutcheon           | 0000-00-00 00:00:00 |
| Lynea Gegg               | 0000-00-00 00:00:00 |
| Dwight Paladini          | 0000-00-00 00:00:00 |
| Viviana Cliburn          | 0000-00-00 00:00:00 |
| Benson Shayler           | 0000-00-00 00:00:00 |
| Kristen Fathers          | 0000-00-00 00:00:00 |
| Corie Hastilow           | 0000-00-00 00:00:00 |
| Fanni Culley             | 0000-00-00 00:00:00 |
| Maegan Neville           | 0000-00-00 00:00:00 |
| Marvin Swatland          | 0000-00-00 00:00:00 |
| Maxim Gioan              | 0000-00-00 00:00:00 |
| Brynne Matyushenko       | 0000-00-00 00:00:00 |
| Merle Waycott            | 0000-00-00 00:00:00 |
| Ax Hatfield              | 0000-00-00 00:00:00 |
| Jacinta Gagie            | 0000-00-00 00:00:00 |
| Stace Castard            | 0000-00-00 00:00:00 |
| Sara Donisthorpe         | 0000-00-00 00:00:00 |
| Boy Spowage              | 0000-00-00 00:00:00 |
| Bamby Skoughman          | 0000-00-00 00:00:00 |
| Dew Flowerden            | 0000-00-00 00:00:00 |
| Wallace Whillock         | 0000-00-00 00:00:00 |
| Christa Dwelly           | 0000-00-00 00:00:00 |
| Farlie Nortunen          | 0000-00-00 00:00:00 |
| Bartholemy Garwill       | 0000-00-00 00:00:00 |
| Marlo Measham            | 0000-00-00 00:00:00 |
| Mead Delamere            | 0000-00-00 00:00:00 |
| Carlen Buckham           | 0000-00-00 00:00:00 |
| Catlaina Crayke          | 0000-00-00 00:00:00 |
| Nikos Borthe             | 0000-00-00 00:00:00 |
| Ruthe Tether             | 0000-00-00 00:00:00 |
| Katerina Ivakhin         | 0000-00-00 00:00:00 |
| Latashia Torresi         | 0000-00-00 00:00:00 |
| Jocko Gowrie             | 0000-00-00 00:00:00 |
| Xavier Annett            | 0000-00-00 00:00:00 |
| Essa Camolli             | 0000-00-00 00:00:00 |
| Zebedee deKnevet         | 0000-00-00 00:00:00 |
| Deina Coolbear           | 0000-00-00 00:00:00 |
| Annette Carnow           | 0000-00-00 00:00:00 |
| Nicolea Zamora           | 0000-00-00 00:00:00 |
| Federico Camies          | 0000-00-00 00:00:00 |
| Florenza Bomb            | 0000-00-00 00:00:00 |
| Ellene LLelweln          | 0000-00-00 00:00:00 |
| Patrica Paye             | 0000-00-00 00:00:00 |
| Umeko Knuckles           | 0000-00-00 00:00:00 |
| Griz Milburne            | 0000-00-00 00:00:00 |
| Scarface Alesi           | 0000-00-00 00:00:00 |
| Shelby Bourgour          | 0000-00-00 00:00:00 |
| Packston Bousquet        | 0000-00-00 00:00:00 |
| Pail Paterson            | 0000-00-00 00:00:00 |
| Saundra Mullord          | 0000-00-00 00:00:00 |
| Balduin Teml             | 0000-00-00 00:00:00 |
| Bridgette Powdrell       | 0000-00-00 00:00:00 |
| Nehemiah Lock            | 0000-00-00 00:00:00 |
| Dari Kneesha             | 0000-00-00 00:00:00 |
| Maxie Lannon             | 0000-00-00 00:00:00 |
| Johnette Musprat         | 0000-00-00 00:00:00 |
| Selby Akeherst           | 0000-00-00 00:00:00 |
| Bibbye Eginton           | 0000-00-00 00:00:00 |
| Christel Hauch           | 0000-00-00 00:00:00 |
| Josh Jerisch             | 0000-00-00 00:00:00 |
| Bernadine Dressel        | 0000-00-00 00:00:00 |
| Paul Philimore           | 0000-00-00 00:00:00 |
| Ingram Ateggart          | 0000-00-00 00:00:00 |
| Jared Brayson            | 0000-00-00 00:00:00 |
| Dewie Tallon             | 0000-00-00 00:00:00 |
| Donny Astill             | 0000-00-00 00:00:00 |
| Mildred Andreucci        | 0000-00-00 00:00:00 |
| Delphine Trusslove       | 0000-00-00 00:00:00 |
| Uri Schruur              | 0000-00-00 00:00:00 |
| Shay Dows                | 0000-00-00 00:00:00 |
| Grantley Filippyev       | 0000-00-00 00:00:00 |
| Tomkin Scoggin           | 0000-00-00 00:00:00 |
| Darell MacCorley         | 0000-00-00 00:00:00 |
| Michaela Loveguard       | 0000-00-00 00:00:00 |
| Katerina Sives           | 0000-00-00 00:00:00 |
| Onfroi Tanswell          | 0000-00-00 00:00:00 |
| Casie Giacopello         | 0000-00-00 00:00:00 |
| Felecia Endicott         | 0000-00-00 00:00:00 |
| Sascha Slora             | 0000-00-00 00:00:00 |
| Janith Pidwell           | 0000-00-00 00:00:00 |
| Jania McCane             | 0000-00-00 00:00:00 |
| Ortensia Gitthouse       | 0000-00-00 00:00:00 |
| Kerianne Hauck           | 0000-00-00 00:00:00 |
| Andrew Melby             | 0000-00-00 00:00:00 |
| Meg Lapsley              | 0000-00-00 00:00:00 |
| Pierre Tidmarsh          | 0000-00-00 00:00:00 |
| Shea Keaton              | 0000-00-00 00:00:00 |
| Selie Phalip             | 0000-00-00 00:00:00 |
| Ertha Ughi               | 0000-00-00 00:00:00 |
| Mirna Cairns             | 0000-00-00 00:00:00 |
| Milty Aspinell           | 0000-00-00 00:00:00 |
| Bob Asel                 | 0000-00-00 00:00:00 |
| Janenna Raxworthy        | 0000-00-00 00:00:00 |
| Mel Scogings             | 0000-00-00 00:00:00 |
| Murial Cyson             | 0000-00-00 00:00:00 |
| Dean Pepis               | 0000-00-00 00:00:00 |
| Annelise Worswick        | 0000-00-00 00:00:00 |
| Bridget Sarle            | 0000-00-00 00:00:00 |
| Quintin Husbands         | 0000-00-00 00:00:00 |
| Ceciley Amey             | 0000-00-00 00:00:00 |
| Jo ann Melsom            | 0000-00-00 00:00:00 |
| Ahmed Akister            | 0000-00-00 00:00:00 |
| Wallie Dunbabin          | 0000-00-00 00:00:00 |
| Cordy de'-Ancy Willis    | 0000-00-00 00:00:00 |
| Ekaterina Halt           | 0000-00-00 00:00:00 |
| Rickey Kiebes            | 0000-00-00 00:00:00 |
| Kalil Lestor             | 0000-00-00 00:00:00 |
| Sascha Tesseyman         | 0000-00-00 00:00:00 |
| Chris Tant               | 0000-00-00 00:00:00 |
| Thane Rassell            | 0000-00-00 00:00:00 |
| Emmie Lutwidge           | 0000-00-00 00:00:00 |
| Karylin Stockman         | 0000-00-00 00:00:00 |
| Zonda Barkas             | 0000-00-00 00:00:00 |
| Shoshanna Shama          | 0000-00-00 00:00:00 |
| Burch Sharplin           | 0000-00-00 00:00:00 |
| Roshelle Masedon         | 0000-00-00 00:00:00 |
| Wildon Jugging           | 0000-00-00 00:00:00 |
| Barnebas Romei           | 0000-00-00 00:00:00 |
| Celina Pulfer            | 0000-00-00 00:00:00 |
| Domeniga Wreight         | 0000-00-00 00:00:00 |
| Sydelle Twiname          | 0000-00-00 00:00:00 |
| Shea Greson              | 0000-00-00 00:00:00 |
| Britteny McPike          | 0000-00-00 00:00:00 |
| Colas Devereux           | 0000-00-00 00:00:00 |
| Jamima Bradane           | 0000-00-00 00:00:00 |
| Jeremiah Brakespear      | 0000-00-00 00:00:00 |
| Tamma Ibanez             | 0000-00-00 00:00:00 |
| Mar Braitling            | 0000-00-00 00:00:00 |
| Haleigh Gwioneth         | 0000-00-00 00:00:00 |
| Arturo Drinkwater        | 0000-00-00 00:00:00 |
| Charis Tort              | 0000-00-00 00:00:00 |
| Paule Dennerly           | 0000-00-00 00:00:00 |
| Karon Ibbett             | 0000-00-00 00:00:00 |
| Louie Ohm                | 0000-00-00 00:00:00 |
| Mahmud Ellse             | 0000-00-00 00:00:00 |
| Celinda Anmore           | 0000-00-00 00:00:00 |
| Cinda Izhakov            | 0000-00-00 00:00:00 |
| Margalit Duligall        | 0000-00-00 00:00:00 |
| Orran Alliberton         | 0000-00-00 00:00:00 |
| Isa Snellman             | 0000-00-00 00:00:00 |
| Clevey Tomasini          | 0000-00-00 00:00:00 |
| Eula Zuker               | 0000-00-00 00:00:00 |
| Meggy Rasp               | 0000-00-00 00:00:00 |
| Carver Benardet          | 0000-00-00 00:00:00 |
| Evonne Baswall           | 0000-00-00 00:00:00 |
| Rickey Birks             | 0000-00-00 00:00:00 |
| Audrie Spratt            | 0000-00-00 00:00:00 |
| Carleen Covotti          | 0000-00-00 00:00:00 |
| Catharina Smethurst      | 0000-00-00 00:00:00 |
| Conrado Jodrelle         | 0000-00-00 00:00:00 |
| Merrill Heisham          | 0000-00-00 00:00:00 |
| Amanda Moorton           | 0000-00-00 00:00:00 |
| Roseann Smullin          | 0000-00-00 00:00:00 |
| Kissee Ronchka           | 0000-00-00 00:00:00 |
| Darleen Carnelley        | 0000-00-00 00:00:00 |
| Junette Maben            | 0000-00-00 00:00:00 |
| Rikki Bohlsen            | 0000-00-00 00:00:00 |
| Dan Cavilla              | 0000-00-00 00:00:00 |
| Porter Kissell           | 0000-00-00 00:00:00 |
| Shea Van Giffen          | 0000-00-00 00:00:00 |
| Kalle Perren             | 0000-00-00 00:00:00 |
| Shurwood Alban           | 0000-00-00 00:00:00 |
| Deeann Syplus            | 0000-00-00 00:00:00 |
| Beverie Tapenden         | 0000-00-00 00:00:00 |
| Ardyth Cleator           | 0000-00-00 00:00:00 |
| Patricio Sainsbury-Brown | 0000-00-00 00:00:00 |
| Dawna Papierz            | 0000-00-00 00:00:00 |
| Danielle Enden           | 0000-00-00 00:00:00 |
| Dollie de Najera         | 0000-00-00 00:00:00 |
| Royall Saffin            | 0000-00-00 00:00:00 |
| Annabelle Byres          | 0000-00-00 00:00:00 |
| Lurline Adolphine        | 0000-00-00 00:00:00 |
| Jolynn Edess             | 0000-00-00 00:00:00 |
| Gabriel Crannage         | 0000-00-00 00:00:00 |
| Adan Spedding            | 0000-00-00 00:00:00 |
| Missie Wogan             | 0000-00-00 00:00:00 |
| Becca Amos               | 0000-00-00 00:00:00 |
| Emmi Melpuss             | 0000-00-00 00:00:00 |
| Gwenette Element         | 0000-00-00 00:00:00 |
| Randy Rodmell            | 0000-00-00 00:00:00 |
| Leslie Minet             | 0000-00-00 00:00:00 |
| Kaja Wesson              | 0000-00-00 00:00:00 |
| Vincenz Sponton          | 0000-00-00 00:00:00 |
| Ellie Albisser           | 0000-00-00 00:00:00 |
| Roger Mallindine         | 0000-00-00 00:00:00 |
| Lucienne Mathivet        | 0000-00-00 00:00:00 |
| Titos Vasilenko          | 0000-00-00 00:00:00 |
| Dasya Lindsley           | 0000-00-00 00:00:00 |
| Griffin Gaywood          | 0000-00-00 00:00:00 |
| Salomo Costin            | 0000-00-00 00:00:00 |
| Redford Cuseck           | 0000-00-00 00:00:00 |
| Dudley Hanmer            | 0000-00-00 00:00:00 |
| Valle Cisson             | 0000-00-00 00:00:00 |
| Wendy Sneddon            | 0000-00-00 00:00:00 |
| Lee Budding              | 0000-00-00 00:00:00 |
| Oliver Yackiminie        | 0000-00-00 00:00:00 |
| Emmet Bool               | 0000-00-00 00:00:00 |
| Augustine Farans         | 0000-00-00 00:00:00 |
| Clem Pleasaunce          | 0000-00-00 00:00:00 |
| Halsey Van Arsdalen      | 0000-00-00 00:00:00 |
| Kassey Bond              | 0000-00-00 00:00:00 |
| Bartholomeo Mirfin       | 0000-00-00 00:00:00 |
| Dael McGifford           | 0000-00-00 00:00:00 |
| Rikki Gemelli            | 0000-00-00 00:00:00 |
| Eddi Blesli              | 0000-00-00 00:00:00 |
| Pattin Fortye            | 0000-00-00 00:00:00 |
| Maridel Willingam        | 0000-00-00 00:00:00 |
| Arleen Kennard           | 0000-00-00 00:00:00 |
| Belicia Dumphy           | 0000-00-00 00:00:00 |
| Mab Hessel               | 0000-00-00 00:00:00 |
| Bord Tregale             | 0000-00-00 00:00:00 |
| Nelli Donoghue           | 0000-00-00 00:00:00 |
| Ajay Palfrie             | 0000-00-00 00:00:00 |
| Wait Penkethman          | 0000-00-00 00:00:00 |
| Katusha Jouhan           | 0000-00-00 00:00:00 |
| Finley Dottridge         | 0000-00-00 00:00:00 |
| Jandy Bulley             | 0000-00-00 00:00:00 |
| Theresina Fallen         | 0000-00-00 00:00:00 |
| Englebert Blaker         | 0000-00-00 00:00:00 |
| Milzie Southouse         | 0000-00-00 00:00:00 |
| Neely Banasevich         | 0000-00-00 00:00:00 |
| Xaviera Cruxton          | 0000-00-00 00:00:00 |
| Cass Wills               | 0000-00-00 00:00:00 |
| Allx Rugge               | 0000-00-00 00:00:00 |
| Demetria Trenchard       | 0000-00-00 00:00:00 |
| Denney Washington        | 0000-00-00 00:00:00 |
| Yorke Duferie            | 0000-00-00 00:00:00 |
| Susanne Lympenie         | 0000-00-00 00:00:00 |
| Cherrita Kington         | 0000-00-00 00:00:00 |
| Farleigh Bisset          | 0000-00-00 00:00:00 |
| Cornelia Boni            | 0000-00-00 00:00:00 |
| Dudley Dalrymple         | 0000-00-00 00:00:00 |
| Lindsay Abrami           | 0000-00-00 00:00:00 |
| Clevie Winear            | 0000-00-00 00:00:00 |
| Tripp Ericsson           | 0000-00-00 00:00:00 |
| Eveline Dytham           | 0000-00-00 00:00:00 |
| Blakeley Proom           | 0000-00-00 00:00:00 |
| Georgia Brunet           | 0000-00-00 00:00:00 |
| Scotty Stallion          | 0000-00-00 00:00:00 |
| Mareah Douris            | 0000-00-00 00:00:00 |
| Deck Domeny              | 0000-00-00 00:00:00 |
| Uriah Ferrarin           | 0000-00-00 00:00:00 |
| Meghann Stitch           | 0000-00-00 00:00:00 |
| Sylvia Gowar             | 0000-00-00 00:00:00 |
| Yoshi Kahn               | 0000-00-00 00:00:00 |
| Selinda Mytton           | 0000-00-00 00:00:00 |
| Avie Lorimer             | 0000-00-00 00:00:00 |
| Karel Cardis             | 0000-00-00 00:00:00 |
| Klemens McTrustey        | 0000-00-00 00:00:00 |
| Amalia Bowstead          | 0000-00-00 00:00:00 |
| Stanislaw Tomasi         | 0000-00-00 00:00:00 |
| Melanie Laverock         | 0000-00-00 00:00:00 |
| Dimitry Stockhill        | 0000-00-00 00:00:00 |
| Vevay Laxston            | 0000-00-00 00:00:00 |
| Frank Buchanan           | 0000-00-00 00:00:00 |
| Darcee Neary             | 0000-00-00 00:00:00 |
| Babara Jarrold           | 0000-00-00 00:00:00 |
| Jim Barz                 | 0000-00-00 00:00:00 |
| Peter Greene             | 0000-00-00 00:00:00 |
| Katina Stewart           | 0000-00-00 00:00:00 |
| Hettie Pearton           | 0000-00-00 00:00:00 |
| Netta Klasing            | 0000-00-00 00:00:00 |
| Reid Strelitzki          | 0000-00-00 00:00:00 |
| Gardiner Todeo           | 0000-00-00 00:00:00 |
| Susi Wrettum             | 0000-00-00 00:00:00 |
| Gerda McCaster           | 0000-00-00 00:00:00 |
| Alyss Mauser             | 0000-00-00 00:00:00 |
| Austin Tylor             | 0000-00-00 00:00:00 |
| Brenden Betchley         | 0000-00-00 00:00:00 |
| Laurence Incogna         | 0000-00-00 00:00:00 |
| Cinda Masseo             | 0000-00-00 00:00:00 |
| Gabbie Pointer           | 0000-00-00 00:00:00 |
| Tedra Dehmel             | 0000-00-00 00:00:00 |
| Pryce Boatswain          | 0000-00-00 00:00:00 |
| Mord O'Sirin             | 0000-00-00 00:00:00 |
| Eartha Riddiough         | 0000-00-00 00:00:00 |
| Aeriela Duffan           | 0000-00-00 00:00:00 |
| Maryl Major              | 0000-00-00 00:00:00 |
| Ronny Hebbs              | 0000-00-00 00:00:00 |
| Torre Burness            | 0000-00-00 00:00:00 |
| Tom Speak                | 0000-00-00 00:00:00 |
| Merell Hindge            | 0000-00-00 00:00:00 |
| Sande Maryet             | 0000-00-00 00:00:00 |
| Gustaf Reinhardt         | 0000-00-00 00:00:00 |
| Guthrey Tarbett          | 0000-00-00 00:00:00 |
| Vilma Laurisch           | 0000-00-00 00:00:00 |
| Aubrie Bagenal           | 0000-00-00 00:00:00 |
| Dulcine Threadgall       | 0000-00-00 00:00:00 |
| Adorne Clethro           | 0000-00-00 00:00:00 |
| Chastity Youell          | 0000-00-00 00:00:00 |
| Sargent Meardon          | 0000-00-00 00:00:00 |
| Tamra Jefferies          | 0000-00-00 00:00:00 |
| Everett Fritchley        | 0000-00-00 00:00:00 |
| Ezekiel Shortall         | 0000-00-00 00:00:00 |
| Frayda Poundsford        | 0000-00-00 00:00:00 |
| Man Cullinan             | 0000-00-00 00:00:00 |
| Averell Amorts           | 0000-00-00 00:00:00 |
| Sherline Beniesh         | 0000-00-00 00:00:00 |
| Franklyn Thickins        | 0000-00-00 00:00:00 |
| Perri Ashwood            | 0000-00-00 00:00:00 |
| Bette Strange            | 0000-00-00 00:00:00 |
| Olympie Densham          | 0000-00-00 00:00:00 |
| Ame Hanscome             | 0000-00-00 00:00:00 |
| Ariel Ickowics           | 0000-00-00 00:00:00 |
| Benoit Mirfin            | 0000-00-00 00:00:00 |
| Trista Cattow            | 0000-00-00 00:00:00 |
| Brant Baurerich          | 0000-00-00 00:00:00 |
| Les Kayzer               | 0000-00-00 00:00:00 |
| Kathryne Pippin          | 0000-00-00 00:00:00 |
| Linus Storek             | 0000-00-00 00:00:00 |
| Mariana Orum             | 0000-00-00 00:00:00 |
| Yelena Strutley          | 0000-00-00 00:00:00 |
| Dorris Priden            | 0000-00-00 00:00:00 |
| Hagan Lummus             | 0000-00-00 00:00:00 |
| Camellia Shillabear      | 0000-00-00 00:00:00 |
| Morna Spileman           | 0000-00-00 00:00:00 |
| Alyssa McAuley           | 0000-00-00 00:00:00 |
| Peterus Heindl           | 0000-00-00 00:00:00 |
| Kipper Tommasi           | 0000-00-00 00:00:00 |
| Lee Stigger              | 0000-00-00 00:00:00 |
| Phillip Batten           | 0000-00-00 00:00:00 |
| Irene Crosthwaite        | 0000-00-00 00:00:00 |
| Loleta Gilliver          | 0000-00-00 00:00:00 |
| Christian Wemyss         | 0000-00-00 00:00:00 |
| Whitaker Ormston         | 0000-00-00 00:00:00 |
| Albrecht Keemer          | 0000-00-00 00:00:00 |
| Cory Arbuckel            | 0000-00-00 00:00:00 |
| Steffen MacAndrew        | 0000-00-00 00:00:00 |
| Frederique Dellenbrook   | 0000-00-00 00:00:00 |
| Liv Worsnop              | 0000-00-00 00:00:00 |
| Donny Sansome            | 0000-00-00 00:00:00 |
| Izak Scorah              | 0000-00-00 00:00:00 |
| Martyn Breche            | 0000-00-00 00:00:00 |
| Glory Corwin             | 0000-00-00 00:00:00 |
| Rolando Bunning          | 0000-00-00 00:00:00 |
| Agathe Tolle             | 0000-00-00 00:00:00 |
| Elwood Dammarell         | 0000-00-00 00:00:00 |
| Brandy Nanuccioi         | 0000-00-00 00:00:00 |
| Selma Oulett             | 0000-00-00 00:00:00 |
| Far Aldrick              | 0000-00-00 00:00:00 |
| Tabb De Laspee           | 0000-00-00 00:00:00 |
| Bridget Duquesnay        | 0000-00-00 00:00:00 |
| Ravid Muro               | 0000-00-00 00:00:00 |
| Vannie Kordes            | 0000-00-00 00:00:00 |
| Aube Sales               | 0000-00-00 00:00:00 |
| Fitzgerald Kinastan      | 0000-00-00 00:00:00 |
| Nolan Richardon          | 0000-00-00 00:00:00 |
| Tod Swyne                | 0000-00-00 00:00:00 |
| Donal Stoile             | 0000-00-00 00:00:00 |
| Rene Healing             | 0000-00-00 00:00:00 |
| Lin Simmig               | 0000-00-00 00:00:00 |
| Mord Threadgill          | 0000-00-00 00:00:00 |
| Merill Shadrack          | 0000-00-00 00:00:00 |
| Devora Baughen           | 0000-00-00 00:00:00 |
| Ruggiero Hilling         | 0000-00-00 00:00:00 |
| Minor Prettjohn          | 0000-00-00 00:00:00 |
| Cyrille Gamlen           | 0000-00-00 00:00:00 |
| Norman Le Houx           | 0000-00-00 00:00:00 |
| Karyl Benedito           | 0000-00-00 00:00:00 |
| Agata Stammer            | 0000-00-00 00:00:00 |
| Irena Brunetti           | 0000-00-00 00:00:00 |
| Tailor Casado            | 0000-00-00 00:00:00 |
| Ellary Ruzek             | 0000-00-00 00:00:00 |
| Tatiana Cliffe           | 0000-00-00 00:00:00 |
| Arie Chantree            | 0000-00-00 00:00:00 |
| Georgie Ganderton        | 0000-00-00 00:00:00 |
| Leone Blanning           | 0000-00-00 00:00:00 |
| Ferne Daud               | 0000-00-00 00:00:00 |
| Ileane MacPeice          | 0000-00-00 00:00:00 |
| Adel Powling             | 0000-00-00 00:00:00 |
| Lewiss Platfoot          | 0000-00-00 00:00:00 |
| Ambrose Simco            | 0000-00-00 00:00:00 |
| Celestina Petschel       | 0000-00-00 00:00:00 |
| Skipp Nisot              | 0000-00-00 00:00:00 |
| Lauren Hansill           | 0000-00-00 00:00:00 |
| Yvonne Donhardt          | 0000-00-00 00:00:00 |
| Arline Mintoft           | 0000-00-00 00:00:00 |
| Lena Palphramand         | 0000-00-00 00:00:00 |
| Elayne Ousley            | 0000-00-00 00:00:00 |
| Gaultiero Koppes         | 0000-00-00 00:00:00 |
| Lindsay Motto            | 0000-00-00 00:00:00 |
| Charity Livingstone      | 0000-00-00 00:00:00 |
| Stanly Rylstone          | 0000-00-00 00:00:00 |
| Egor Mussett             | 0000-00-00 00:00:00 |
| Arleyne O'Hannen         | 0000-00-00 00:00:00 |
| Nixie Grangier           | 0000-00-00 00:00:00 |
| Hermon Scotford          | 0000-00-00 00:00:00 |
| Jedediah Arnaldo         | 0000-00-00 00:00:00 |
| Manya Kemmey             | 0000-00-00 00:00:00 |
| Thurstan Wastling        | 0000-00-00 00:00:00 |
| Jasmina Puttock          | 0000-00-00 00:00:00 |
| Coretta Doxsey           | 0000-00-00 00:00:00 |
| Diann Grey               | 0000-00-00 00:00:00 |
| Christos Butterly        | 0000-00-00 00:00:00 |
| Palmer Monteaux          | 0000-00-00 00:00:00 |
| Corby Tomasino           | 0000-00-00 00:00:00 |
| Pierce Goudard           | 0000-00-00 00:00:00 |
| Madella Kynton           | 0000-00-00 00:00:00 |
| Gabbi Wyldbore           | 0000-00-00 00:00:00 |
| Margit Hakewell          | 0000-00-00 00:00:00 |
| Isak Coe                 | 0000-00-00 00:00:00 |
| Erich Scholey            | 0000-00-00 00:00:00 |
| Sandra Stutely           | 0000-00-00 00:00:00 |
| Bastian Hargess          | 0000-00-00 00:00:00 |
| Glennis Rich             | 0000-00-00 00:00:00 |
| Rafe Pritchard           | 0000-00-00 00:00:00 |
| Hamil Cockett            | 0000-00-00 00:00:00 |
| Welsh Hanscome           | 0000-00-00 00:00:00 |
| Lari Jones               | 0000-00-00 00:00:00 |
| Christie Trebbett        | 0000-00-00 00:00:00 |
| Sarita Crawley           | 0000-00-00 00:00:00 |
| Lanette Busek            | 0000-00-00 00:00:00 |
| Jane Monteith            | 0000-00-00 00:00:00 |
| Arabela Washtell         | 0000-00-00 00:00:00 |
| Maxi Myner               | 0000-00-00 00:00:00 |
| Alwyn Finden             | 0000-00-00 00:00:00 |
| Lauri Zanicchi           | 0000-00-00 00:00:00 |
| Fabian Amphlett          | 0000-00-00 00:00:00 |
| Andrei Buggs             | 0000-00-00 00:00:00 |
| Ermin Garden             | 0000-00-00 00:00:00 |
| Devland Boxe             | 0000-00-00 00:00:00 |
| Norry Georgiev           | 0000-00-00 00:00:00 |
| Querida Screaton         | 0000-00-00 00:00:00 |
| Breena Chateau           | 0000-00-00 00:00:00 |
| Hart Maddox              | 0000-00-00 00:00:00 |
| Alec Sobieski            | 0000-00-00 00:00:00 |
| Marguerite Ricson        | 0000-00-00 00:00:00 |
| Susie Tschersich         | 0000-00-00 00:00:00 |
| Dede Scotney             | 0000-00-00 00:00:00 |
| Merry Mulroy             | 0000-00-00 00:00:00 |
| Annalee Nealey           | 0000-00-00 00:00:00 |
| Georgeanna McEnteggart   | 0000-00-00 00:00:00 |
| Allix Kassman            | 0000-00-00 00:00:00 |
| Timoteo Fylan            | 0000-00-00 00:00:00 |
| Kimberly Autie           | 0000-00-00 00:00:00 |
| Berty Vanetti            | 0000-00-00 00:00:00 |
| Florida Gariff           | 0000-00-00 00:00:00 |
| Lucien Taylerson         | 0000-00-00 00:00:00 |
| Liam Corbally            | 0000-00-00 00:00:00 |
| Kassia Del Monte         | 0000-00-00 00:00:00 |
| Mariya Corradeschi       | 0000-00-00 00:00:00 |
| Maren Wackett            | 0000-00-00 00:00:00 |
| Ingrim Heindl            | 0000-00-00 00:00:00 |
| Rozalin Whithalgh        | 0000-00-00 00:00:00 |
| Ardisj Willman           | 0000-00-00 00:00:00 |
| Thurston Mathewson       | 0000-00-00 00:00:00 |
| Barton Uc                | 0000-00-00 00:00:00 |
| Dud Stainbridge          | 0000-00-00 00:00:00 |
| Joann Winsborrow         | 0000-00-00 00:00:00 |
| Huey Locarno             | 0000-00-00 00:00:00 |
| Claudelle Andrusov       | 0000-00-00 00:00:00 |
| Olga Holby               | 0000-00-00 00:00:00 |
| Dael Tillyer             | 0000-00-00 00:00:00 |
| Berget Swadling          | 0000-00-00 00:00:00 |
| Zack Gutowski            | 0000-00-00 00:00:00 |
| Lulita Romayne           | 0000-00-00 00:00:00 |
| Roberto Heath            | 0000-00-00 00:00:00 |
| Reilly Dolohunty         | 0000-00-00 00:00:00 |
| Gray Anshell             | 0000-00-00 00:00:00 |
| Bellanca Wittier         | 0000-00-00 00:00:00 |
| Melantha Schulz          | 0000-00-00 00:00:00 |
| Kimball Pevreal          | 0000-00-00 00:00:00 |
| Austina Ingliby          | 0000-00-00 00:00:00 |
| Helsa Yate               | 0000-00-00 00:00:00 |
| Free Scrivenor           | 0000-00-00 00:00:00 |
| Roselia Townsend         | 0000-00-00 00:00:00 |
| Karoly Hurry             | 0000-00-00 00:00:00 |
| Joella Shelmardine       | 0000-00-00 00:00:00 |
| Evelin Brinkler          | 0000-00-00 00:00:00 |
| Leeanne Studders         | 0000-00-00 00:00:00 |
| Sherie Creech            | 0000-00-00 00:00:00 |
| Andeee Boatwright        | 0000-00-00 00:00:00 |
| Didi Matyas              | 0000-00-00 00:00:00 |
| Lonnie Kyles             | 0000-00-00 00:00:00 |
| Noland Corrett           | 0000-00-00 00:00:00 |
| Lucretia Daglish         | 0000-00-00 00:00:00 |
| Isis Oxburgh             | 0000-00-00 00:00:00 |
| Patricio Ledgley         | 0000-00-00 00:00:00 |
| Kamilah Buttress         | 0000-00-00 00:00:00 |
| Caren Luttgert           | 0000-00-00 00:00:00 |
| Helena Molloy            | 0000-00-00 00:00:00 |
| Torrey Gilphillan        | 0000-00-00 00:00:00 |
| Koralle Raddon           | 0000-00-00 00:00:00 |
| Darlene Dallman          | 0000-00-00 00:00:00 |
| Audrey Shekle            | 0000-00-00 00:00:00 |
| Sibby Ferruzzi           | 0000-00-00 00:00:00 |
| Colby Cunnell            | 0000-00-00 00:00:00 |
| Axel Throughton          | 0000-00-00 00:00:00 |
| Roslyn Domb              | 0000-00-00 00:00:00 |
| Hermia Badland           | 0000-00-00 00:00:00 |
| Fionnula Alp             | 0000-00-00 00:00:00 |
| Rodina Jensen            | 0000-00-00 00:00:00 |
| Ronnie Withams           | 0000-00-00 00:00:00 |
| Shelli Ridd              | 0000-00-00 00:00:00 |
| Burton MacGillivrie      | 0000-00-00 00:00:00 |
| Leah Margiotta           | 0000-00-00 00:00:00 |
| Viviana Porrett          | 0000-00-00 00:00:00 |
| Winn Eliesco             | 0000-00-00 00:00:00 |
| Kristoffer Folker        | 0000-00-00 00:00:00 |
| Patton Peddel            | 0000-00-00 00:00:00 |
| Skipp Mecozzi            | 0000-00-00 00:00:00 |
| Nollie McCosker          | 0000-00-00 00:00:00 |
| Schuyler Benford         | 0000-00-00 00:00:00 |
| Shurwood Lankford        | 0000-00-00 00:00:00 |
| Kennan Hue               | 0000-00-00 00:00:00 |
| Daffie MacCaughey        | 0000-00-00 00:00:00 |
| Brocky Klehn             | 0000-00-00 00:00:00 |
| Frederigo MacComiskey    | 0000-00-00 00:00:00 |
| Scarlet Corteis          | 0000-00-00 00:00:00 |
| Lorene Milbank           | 0000-00-00 00:00:00 |
| Devin Aspden             | 0000-00-00 00:00:00 |
| Tove Huxley              | 0000-00-00 00:00:00 |
| Zitella Gauntley         | 0000-00-00 00:00:00 |
| Carrol Edwardes          | 0000-00-00 00:00:00 |
| Ross Blodgett            | 0000-00-00 00:00:00 |
| Tuckie Brydon            | 0000-00-00 00:00:00 |
| Elyssa Howorth           | 0000-00-00 00:00:00 |
| Reggi Radenhurst         | 0000-00-00 00:00:00 |
| Amble Roz                | 0000-00-00 00:00:00 |
| Ricki Nolte              | 0000-00-00 00:00:00 |
| Rubia Arnall             | 0000-00-00 00:00:00 |
| Janine Sturdey           | 0000-00-00 00:00:00 |
| Opal Stefanovic          | 0000-00-00 00:00:00 |
| Urbanus Hanlin           | 0000-00-00 00:00:00 |
| Tish Hazlehurst          | 0000-00-00 00:00:00 |
| Ciro Jagson              | 0000-00-00 00:00:00 |
| Consolata Pindar         | 0000-00-00 00:00:00 |
| Jandy Schoroder          | 0000-00-00 00:00:00 |
| Caryn Fetters            | 0000-00-00 00:00:00 |
| Merwyn Cadwallader       | 0000-00-00 00:00:00 |
| Minnaminnie Armin        | 0000-00-00 00:00:00 |
| Uta Cuttles              | 0000-00-00 00:00:00 |
| Suki Hamshere            | 0000-00-00 00:00:00 |
| Brion Wasiel             | 0000-00-00 00:00:00 |
| Hilliary Foot            | 0000-00-00 00:00:00 |
| Renee Fernier            | 0000-00-00 00:00:00 |
| Ortensia Luxon           | 0000-00-00 00:00:00 |
| Lind Ewells              | 0000-00-00 00:00:00 |
| Carlee Phillippo         | 0000-00-00 00:00:00 |
| Madelene Goold           | 0000-00-00 00:00:00 |
| Gwenore Joye             | 0000-00-00 00:00:00 |
| Fredia Beglin            | 0000-00-00 00:00:00 |
| Dee dee McCafferky       | 0000-00-00 00:00:00 |
| Pippy Bogey              | 0000-00-00 00:00:00 |
| Cal Warriner             | 0000-00-00 00:00:00 |
| Jerrilee Wearn           | 0000-00-00 00:00:00 |
| Batsheva Gipps           | 0000-00-00 00:00:00 |
| Huntley Scarasbrick      | 0000-00-00 00:00:00 |
| Carlie Pannett           | 0000-00-00 00:00:00 |
| Deidre Nussen            | 0000-00-00 00:00:00 |
| Romeo Tullett            | 0000-00-00 00:00:00 |
| Mahmoud Matej            | 0000-00-00 00:00:00 |
| Wallis Coleman           | 0000-00-00 00:00:00 |
| Adelaide Ilem            | 0000-00-00 00:00:00 |
| Myca Minghetti           | 0000-00-00 00:00:00 |
| Meade Battista           | 0000-00-00 00:00:00 |
| Stirling Halfacree       | 0000-00-00 00:00:00 |
| Adam Fyfield             | 0000-00-00 00:00:00 |
| Xylia Arkley             | 0000-00-00 00:00:00 |
| Chaddy Ertel             | 0000-00-00 00:00:00 |
| Daniel Manwell           | 0000-00-00 00:00:00 |
| Catina Trivett           | 0000-00-00 00:00:00 |
| Beth Hedger              | 0000-00-00 00:00:00 |
| Cicily Tapsfield         | 0000-00-00 00:00:00 |
| Vally Cadlock            | 0000-00-00 00:00:00 |
| Colas Munkton            | 0000-00-00 00:00:00 |
| Bart Geikie              | 0000-00-00 00:00:00 |
| Anatola Aldin            | 0000-00-00 00:00:00 |
| Allx Dancey              | 0000-00-00 00:00:00 |
| Kathryne Borman          | 0000-00-00 00:00:00 |
| Shawnee Matveichev       | 0000-00-00 00:00:00 |
| Portia Tredget           | 0000-00-00 00:00:00 |
| Louisette Banishevitz    | 0000-00-00 00:00:00 |
| Meris Ropkes             | 0000-00-00 00:00:00 |
| Bailey Newlyn            | 0000-00-00 00:00:00 |
| Mary Baldetti            | 0000-00-00 00:00:00 |
| Agna Palley              | 0000-00-00 00:00:00 |
+--------------------------+---------------------+
1000 rows in set (0.002 sec)

MariaDB [latihan_mysql]>