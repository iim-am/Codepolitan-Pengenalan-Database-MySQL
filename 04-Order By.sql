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
8 rows in set (0.044 sec)

MariaDB [(none)]> USE latihan_mysql
Database changed
MariaDB [latihan_mysql]> SHOW DATABASES;
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

MariaDB [latihan_mysql]> SELECT * customers
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customers' at line 1
MariaDB [latihan_mysql]> SELECT * FROM customer
    -> ORDER BY name
    -> LIMIT 10;
ERROR 1146 (42S02): Table 'latihan_mysql.customer' doesn't exist
MariaDB [latihan_mysql]> DESCRIBE customers;
+---------+----------+------+-----+---------+----------------+
| Field   | Type     | Null | Key | Default | Extra          |
+---------+----------+------+-----+---------+----------------+
| id      | int(11)  | NO   | PRI | NULL    | auto_increment |
| name    | char(50) | NO   |     | NULL    |                |
| city    | char(50) | NO   |     | NULL    |                |
| country | char(50) | NO   |     | NULL    |                |
+---------+----------+------+-----+---------+----------------+
4 rows in set (0.026 sec)

MariaDB [latihan_mysql]> SELECT *
    -> FROM customers
    -> ORDER BY name DESC;
+------+------------------------+--------------------------------+--------------------------+
| id   | name                   | city                           | country                  |
+------+------------------------+--------------------------------+--------------------------+
|  852 | Zorine Pauletto        | Tengah                         | Indonesia                |
|  429 | Zonnya Kinsley         | Santa Rosa                     | Peru                     |
|  585 | Zenia Musk             | El Limon                       | Mexico                   |
|  112 | Zenia Common           | Tr┼íi─ç                        | Serbia                   |
|  144 | Zelig Lidgey           | ┼ü─àck                         | Poland                   |
|   10 | Zedekiah Syrett        | Villa Gesell                   | Argentina                |
|  880 | Zebulen O'Glassane     | Doln├¡ Po─ìernice              | Czech Republic           |
|  411 | Zebadiah Startin       | Mutang                         | China                    |
|  710 | Zared Friedman         | Guanjiabao                     | China                    |
|  110 | Zachary Benge          | Philadelphia                   | United States            |
|  435 | Zach Maccrae           | Joyabaj                        | Guatemala                |
|  722 | Yevette Dober          | El Calvario                    | Mexico                   |
|  116 | Yard Berresford        | Jiukeng                        | China                    |
|  469 | Yank Wistance          | Nangka                         | Philippines              |
|   83 | Wright Maas            | Mat-i                          | Philippines              |
|  419 | Worthington Schimank   | Santa Clara                    | Mexico                   |
|  782 | Woodman Hawkswell      | Bayasgalant                    | Mongolia                 |
|  487 | Winona Biles           | Changping                      | China                    |
|    1 | Winnie Seaman          | Riebi┼åi                       | Latvia                   |
|  703 | Wilona Kewzick         | Fenais da Ajuda                | Portugal                 |
|  952 | Willi Rozier           | Saddina                        | Morocco                  |
|  748 | Will Cringle           | Rangmanten                     | Indonesia                |
|  803 | Wilie Tipler           | Xiayang                        | China                    |
|  381 | Wilfrid Spurrett       | Bamban                         | Indonesia                |
|  264 | Wiatt Leader           | Banff                          | Canada                   |
|  222 | Whitby Senescall       | P├⌐rama                        | Greece                   |
|  231 | Wendeline Tayspell     | Ismailia                       | Egypt                    |
|  212 | Wendeline Comellini    | Majdal Ban─½ F─üß╕æil          | Palestinian Territory    |
|   44 | Waylen Semor           | Chenjiahe                      | China                    |
|  161 | Waring Houlworth       | Bocon├│                        | Venezuela                |
|  197 | Walliw Lammerding      | San Andr├⌐s                    | Guatemala                |
|  625 | Wallie Cridland        | Boavista                       | Portugal                 |
|  953 | Walden Fortin          | Xichuan                        | China                    |
|  587 | Waldemar Venney        | G┼éubczyce                     | Poland                   |
|  816 | Wait Switzer           | Zhaogezhuang                   | China                    |
|  323 | Wain Hirsthouse        | Cikadondongdesa                | Indonesia                |
|  652 | Vivianna Gorton        | B├⌐oumi                        | Ivory Coast              |
|  758 | Vitoria Lapping        | Mabilog                        | Philippines              |
|   51 | Vitia Court            | Huangzhai                      | China                    |
|  577 | Virginie Padmore       | Hashtpar                       | Iran                     |
|  431 | Vinson Reijmers        | Uralo-Kavkaz                   | Ukraine                  |
|  500 | Vina Fehners           | Huangji                        | China                    |
|  622 | Veronique Arrow        | San Luis                       | Philippines              |
|  965 | Veronica Alexsandrov   | Ambatolampy                    | Madagascar               |
|  349 | Verine Bruyett         | Harrisburg                     | United States            |
|  275 | Vergil Sueter          | Havirga                        | Mongolia                 |
|  403 | Venus Upton            | Gua├¡ba                        | Brazil                   |
|  295 | Vassily Moakson        | Piotrk├│w Trybunalski          | Poland                   |
|  699 | Vasily Grimshaw        | Huanghuatan                    | China                    |
|  695 | Van Collen             | Rostov                         | Russia                   |
|  848 | Valery Drohan          | Neiafu                         | Tonga                    |
|  645 | Valentine Laytham      | Nantuo                         | China                    |
|  992 | Valentina Baudrey      | Jiedu                          | China                    |
|  846 | Valentin Gilhool       | Montfort-sur-Meu               | France                   |
|  886 | Valencia Berisford     | Fukadale                       | Indonesia                |
|  776 | Ursala Hylands         | Saint Croix                    | U.S. Virgin Islands      |
|  872 | Una Tidbold            | Depok                          | Indonesia                |
|  691 | Tybalt Fleetham        | Razumnoye                      | Russia                   |
|  274 | Twyla Ludron           | Dmytrivka                      | Ukraine                  |
|  721 | Trudie Gonzalez        | Zheshart                       | Russia                   |
|  444 | Trixi Storrar          | Panoongan                      | Indonesia                |
|  545 | Trev Wickes            | New York City                  | United States            |
|  355 | Tremaine Tressler      | Chuncheon                      | South Korea              |
|  195 | Trace Wharin           | Soutelo                        | Portugal                 |
|  985 | Tore Crudgington       | Taremskoye                     | Russia                   |
|  944 | Tomas Jowett           | Yingzai                        | China                    |
|  757 | Toddie Deme            | Liutangting                    | China                    |
|  918 | Todd Rowson            | Megal├│poli                    | Greece                   |
|  597 | Tod Sone               | Lille                          | France                   |
|  246 | Tito Franciskiewicz    | Dengok                         | Indonesia                |
|  299 | Tiphani Poore          | Guaratinguet├í                 | Brazil                   |
|   64 | Tine Pallasch          | Ipau├ºu                        | Brazil                   |
|  909 | Timotheus Cadwallader  | Daoqiao                        | China                    |
|  551 | Tierney Thuillier      | Soutocico                      | Portugal                 |
|  518 | Tiebold Kinghorn       | Kekeran                        | Indonesia                |
|  455 | Thurston Shapland      | Yaizu                          | Japan                    |
|  805 | Therine Demelt         | Kaduheuleut                    | Indonesia                |
|  917 | Theresa Adelman        | Tomice                         | Poland                   |
|  456 | Theadora Aldersea      | Nouvelle France                | Mauritius                |
|  293 | Thadeus Philippon      | Banraeaba Village              | Kiribati                 |
|  641 | Terza Aldous           | Ngadri                         | Indonesia                |
|  228 | Terrill Filippyev      | Vodyane                        | Ukraine                  |
|  539 | Teirtza Bartelet       | Tursunzoda                     | Tajikistan               |
|  605 | Ted Gillies            | Siquirres                      | Costa Rica               |
|  682 | Tawsha Winchcomb       | Shidu                          | China                    |
|  356 | Tatum Taberner         | Huanggangshan                  | China                    |
|  893 | Taryn MacDuffie        | Hobscheid                      | Luxembourg               |
|  317 | Tanitansy Iddon        | Huangsha                       | China                    |
|  718 | Tania Layborn          | Xiangtang                      | China                    |
|   68 | Tamra Pinks            | Detroit                        | United States            |
|    8 | Tammie Pettiford       | Nueve de Julio                 | Argentina                |
|  582 | Tamas MacAscaidh       | Link├╢ping                     | Sweden                   |
|  260 | Tallia Collacombe      | R├¡o Pico                      | Argentina                |
|  473 | Talia Waddup           | Suresnes                       | France                   |
|  975 | Tadd Camous            | Alegre                         | Brazil                   |
|  972 | Tabitha Ost            | Duna├║jv├íros                  | Hungary                  |
|  704 | Tabatha Antoney        | Yitang                         | China                    |
|  734 | Sylvia Bisacre         | Pokrovskoye-Streshn├½vo        | Russia                   |
|  142 | Suzy Baiss             | Zengguang                      | China                    |
|  727 | Suzanna Sibylla        | Shangdongjie                   | China                    |
|  692 | Sutton Dikels          | Chengnan                       | China                    |
|  923 | Susy Tidcomb           | Andongrejo                     | Indonesia                |
|  832 | Susie Bunclark         | Doubravice nad Svitavou        | Czech Republic           |
|  519 | Susette Sweed          | Eaubonne                       | France                   |
|  364 | Susanne Klassman       | Beloye                         | Russia                   |
|  160 | Suki Ringsell          | Lailunggi                      | Indonesia                |
|  599 | Stormi Brideau         | Al H─üshim─½yah                | Palestinian Territory    |
|  576 | Storm Klimochkin       | Hobor                          | China                    |
|  971 | Steven Stennine        | Little Current                 | Canada                   |
|  806 | Stephanus D'Agostino   | Gannan                         | China                    |
|   17 | Stephanie Winsome      | Jargalant                      | Mongolia                 |
|  619 | Stefania Wonfor        | Camden                         | United States            |
|   20 | Starla Stickells       | Santa Paz                      | Philippines              |
|  664 | Stanislas Toomey       | Lanas                          | Philippines              |
|  239 | Stacia Ceeley          | Shenshu                        | China                    |
|  753 | Sosanna Jurkowski      | YantalΓÇÖ                      | Russia                   |
|  102 | Sloane Sawdon          | σƒÄΘâè                         | China                    |
|  328 | Skippy Rolf            | Suphan Buri                    | Thailand                 |
|  708 | Siusan Brosoli         | Monsanto                       | Portugal                 |
|   23 | Sisely Anwell          | Ukhta                          | Russia                   |
|   61 | Simmonds Kadwallider   | Temuco                         | Chile                    |
|  156 | Silvester Khotler      | Nyk├╢ping                      | Sweden                   |
|  188 | Sigfried Deignan       | Fencheng                       | China                    |
|  283 | Siffre Betke           | Sanli                          | China                    |
|  775 | Sibley Mettetal        | Catanauan                      | Philippines              |
|  369 | Sibley Halbard         | Crasto                         | Portugal                 |
|  730 | Siana Andrassy         | San Miguel                     | Philippines              |
|  604 | Sherye Klageman        | Bourg-en-Bresse                | France                   |
|  595 | Sherill Beecraft       | Long Loreh                     | Indonesia                |
|  640 | Shelton Weins          | Jard├¡n Am├⌐rica               | Argentina                |
|  205 | Shellie Standell       | Venda Nova                     | Portugal                 |
|  728 | Sheba Bumpass          | Yasinya                        | Ukraine                  |
|  884 | Shawn Nerger           | Santa Cruz                     | Mexico                   |
|  437 | Sharia Lethieulier     | Sh─ühz─üdpur                   | Bangladesh               |
|  388 | Shanna Corden          | Bandar ΓÇÿAbb─üs               | Iran                     |
|  138 | Shanie Rizzelli        | Tucson                         | United States            |
|  329 | Shani Guilaem          | Jadho                          | Indonesia                |
|  479 | Sergei Lilly           | Pandangan Kulon                | Indonesia                |
|  442 | Sena Littlejohns       | San Enrique                    | Philippines              |
|  629 | Selie Hemphall         | Viso                           | Portugal                 |
|  866 | Sela Paull             | Gaoyao                         | China                    |
|  391 | Sean Dowe              | Kauit                          | Philippines              |
|   11 | Scotty Giorgiutti      | M─¢ln├¡k                       | Czech Republic           |
|  828 | Sayres Cowgill         | T├ñby                          | Sweden                   |
|  627 | Sayre Woloschin        | Talisay                        | Philippines              |
|  464 | Sayers Haycox          | Bayaguana                      | Dominican Republic       |
|  842 | Savina Westwick        | Santo Domingo                  | Philippines              |
|  922 | Sashenka Swiffen       | Birmingham                     | United States            |
|  185 | Sarine Hincham         | Shar                           | Kazakhstan               |
|  967 | Saree Edmondson        | Salinggara                     | Indonesia                |
|  363 | Sandie Palphramand     | Kameda-honch┼ì                 | Japan                    |
|   55 | Sammy Andrejevic       | Datangzhuang                   | China                    |
|  667 | Salvador Kilfeder      | Leceia                         | Portugal                 |
|  508 | Sallyanne Rawe         | Caramuca                       | Venezuela                |
|  603 | Salim Woolf            | Yunlong                        | China                    |
|  814 | Sadye Smelley          | Prokhladnyy                    | Russia                   |
|  666 | Sabina Divers          | Los Aquijes                    | Peru                     |
|   59 | Ruttger Stannett       | Tanzybey                       | Russia                   |
|  956 | Ruthanne Stannah       | Saparua                        | Indonesia                |
|  128 | Ruthanne Persey        | Brooklyn                       | New Zealand              |
|  509 | Rustin Woolfitt        | Melipilla                      | Chile                    |
|  386 | Rurik Lister           | Burqah                         | Palestinian Territory    |
|  320 | Rupert Verdun          | Sobotka                        | Czech Republic           |
|  294 | Rudolph Ackerley       | Koran                          | Bosnia and Herzegovina   |
|  256 | Rudie Stritton         | Pejukutan                      | Indonesia                |
|  505 | Rubia O'Gready         | Prupuh                         | Indonesia                |
|  171 | Royce Braune           | Zb├╜┼íov                       | Czech Republic           |
|  350 | Royall Marcinkowski    | Carolina                       | Puerto Rico              |
|  797 | Roxy Novotne           | Wenchi                         | Ghana                    |
|  315 | Roxi Feehan            | Sanom                          | Thailand                 |
|  897 | Rosene Strodder        | Jizhou                         | China                    |
|  736 | Rosemaria Manvelle     | Nagornyy                       | Russia                   |
|  499 | Roselle Crayker        | Kamieniec                      | Poland                   |
|  179 | Rosanne Murt           | Pancalan                       | Indonesia                |
|  868 | Rosana Hansford        | Campraksanta                   | Indonesia                |
|  210 | Rosana Barnson         | Ngrejo                         | Indonesia                |
|  148 | Rooney Kingham         | Sojo                           | Peru                     |
|  375 | Ronnie Fraschetti      | Eauripik                       | Micronesia               |
|  779 | Romain Sandyfirth      | Wenshao                        | China                    |
|   42 | Romain Pitblado        | Kaingiwa                       | Nigeria                  |
|  557 | Rochette Raffan        | Yaxi                           | China                    |
|  620 | Robinett Kabisch       | Teno                           | Chile                    |
|  196 | Rivkah Linay           | Kainan                         | Japan                    |
|  415 | Rivkah De Antoni       | Beaufort                       | Luxembourg               |
|  850 | Riley Overlow          | San Jos├⌐                      | Costa Rica               |
|   73 | Rikki Santostefano.    | Spring                         | United States            |
|  863 | Rhys Hurn              | Butel                          | Macedonia                |
|   36 | Rhodie Meigh           | ShalΓÇÖskiy                    | Russia                   |
|  167 | Rhoda Clemence         | Kl├í┼íterec nad Oh┼Ö├¡         | Czech Republic           |
|  556 | Rey Martusewicz        | Yuankeng                       | China                    |
|  340 | Reube Peres            | Shing┼½                        | Japan                    |
|  950 | Rennie Madden          | Inta                           | Russia                   |
|  642 | Rennie Greenham        | Linxihe                        | China                    |
|  593 | Reilly Malatalant      | Suka Makmue                    | Indonesia                |
|   46 | Reid Fulmen            | Plymouth                       | Montserrat               |
|  948 | Regine Beacham         | Manzherok                      | Russia                   |
|  925 | Reese Symons           | Br├ñnd├╢                       | Aland Islands            |
|  219 | Rees Pidon             | Dalg─ün                        | Iran                     |
|  608 | Ree Letrange           | Camocim                        | Brazil                   |
|  742 | Raymund Hincks         | Al Mars├í                      | Tunisia                  |
|  338 | Raviv Cay              | Krajan Suko Kidul              | Indonesia                |
|  601 | Raquel Penvarden       | Kourou                         | French Guiana            |
|  216 | Raquel Ginman          | Guanambi                       | Brazil                   |
|   77 | Ranice Gritskov        | Pyetrykaw                      | Belarus                  |
|  936 | Randall Zum Felde      | Chengyang                      | China                    |
|  636 | Rancell Litt           | Bulakan                        | Indonesia                |
|  201 | Rana Prosh             | Mauren                         | Liechtenstein            |
|  436 | Ramon Stoven           | Neni                           | Nigeria                  |
|  824 | Raina Aleksandrov      | Calango                        | Peru                     |
|    7 | Raimundo Schaben       | Tarusa                         | Russia                   |
|   94 | Raimundo Coules        | Mourelos                       | Portugal                 |
|  418 | Raimondo Zanuciolii    | ├ûstersund                     | Sweden                   |
|  999 | Rachel Coldrick        | Taphan Hin                     | Thailand                 |
|  720 | Rabbi Micka            | Sanjiazi                       | China                    |
|  709 | Quincey Colkett        | Toba                           | Serbia                   |
|  452 | Pryce Grinov           | Namora                         | Peru                     |
|  249 | Prentiss Bussel        | Dzhankoy                       | Ukraine                  |
|  892 | Portia Roston          | AntopalΓÇÖ                     | Belarus                  |
|  465 | Piotr Syvret           | Jihui                          | China                    |
|  905 | Philomena Randals      | Baranoa                        | Colombia                 |
|  572 | Philippine Lachaize    | Tullich                        | United Kingdom           |
|  676 | Phaedra LaBastida      | Lampang                        | Thailand                 |
|  461 | Peyton Wadwell         | Petrovo-DalΓÇÖneye             | Russia                   |
|   92 | Peta Hargerie          | Talitsa                        | Russia                   |
|  378 | Perry Adnams           | Nakhon Nayok                   | Thailand                 |
|  354 | Perl Bowden            | Chapadinha                     | Brazil                   |
|   88 | Peri Boutellier        | Ba─ìki Breg                    | Serbia                   |
|   96 | Pepita Goodale         | Suhopolje                      | Croatia                  |
|  637 | Pennie Hyde            | Lipu                           | China                    |
|  819 | Penni Lortzing         | Monte                          | Portugal                 |
|  878 | Pegeen Mintoff         | Tagog                          | Indonesia                |
|  302 | Pegeen Casarili        | Hrib-Lo┼íki Potok              | Slovenia                 |
|  313 | Pauly Feuell           | Angoul├¬me                     | France                   |
|  398 | Patrizius Sarjant      | Tivat                          | Montenegro               |
|  440 | Patrick Pic            | L├⌐fka                         | Cyprus                   |
|  526 | Patricia Brickell      | Fuch┼½ch┼ì                     | Japan                    |
|  820 | Patin Spurden          | Ermida                         | Portugal                 |
|  914 | Parrnell Ashington     | Haninge                        | Sweden                   |
|   95 | Paola Pauletto         | Buenavista                     | Mexico                   |
|  139 | Pammy Davis            | Pampa Hermosa                  | Peru                     |
|  297 | Pamela Oats            | Zuya                           | Ukraine                  |
|  528 | Pail Bayman            | Maputsoe                       | Lesotho                  |
|  303 | Padgett Conaboy        | ΓÇÿAl─½ al Gharb─½             | Iraq                     |
|  674 | Paddie Anthony         | Slovenski Javornik             | Slovenia                 |
|  548 | Pablo Murty            | ┼óawr al B─üß╕⌐ah              | Yemen                    |
|  177 | Othilie Asquez         | Buchou                         | China                    |
|  118 | Othelia Seares         | Shuangpengxi                   | China                    |
|  267 | Otha Lapides           | Pedro S├ínchez                 | Dominican Republic       |
|  470 | Orv Bidmead            | Vale da Bajouca                | Portugal                 |
|  379 | Orin Winfindale        | C├│rdoba                       | Argentina                |
|  752 | Orelle Stocking        | Prince Albert                  | Canada                   |
|  282 | Orella McKeag          | El Quebrachal                  | Argentina                |
|  192 | Ora Terrett            | Yakovlevo                      | Russia                   |
|  277 | Ophelia Hirtz          | Ishioka                        | Japan                    |
|  829 | Opalina Moine          | Saihan Tal                     | China                    |
|  384 | Omero Prince           | ß╕¿arf al Musaytirah           | Syria                    |
|  457 | Olva Harwood           | Huazhou                        | China                    |
|  394 | Olivette Mokes         | Nepalgunj                      | Nepal                    |
|  134 | Olive Condie           | Basar                          | China                    |
|  713 | Olia Valentinuzzi      | Rafa├»                         | Central African Republic |
|  705 | Olenolin Metherell     | Rezovac                        | Croatia                  |
|  537 | Odette Davall          | Wilczyce                       | Poland                   |
|  766 | Odetta Cranidge        | Divin├│polis                   | Brazil                   |
|  732 | Octavius Gowdy         | Gornorechenskiy                | Russia                   |
|  345 | Obed Torritti          | I┼éawa                         | Poland                   |
|  330 | North Charrier         | Guam Government House          | Guam                     |
|  374 | Norbert Close          | Tula                           | Russia                   |
|  130 | Nonna Pallaske         | Wilkes Barre                   | United States            |
|  746 | Nola Sawyers           | Robertsfors                    | Sweden                   |
|  547 | Noemi Kitchinghan      | Opa┼Öany                       | Czech Republic           |
|  103 | Noell Triggel          | K┼éomnice                      | Poland                   |
|  681 | Nisse Bakewell         | Horad Smalyavichy              | Belarus                  |
|  843 | Nikolia Apfelmann      | As Saff─ün─½yah                | Saudi Arabia             |
|  121 | Nikki Hanbridge        | Canhestros                     | Portugal                 |
|  420 | Niki Bluck             | Karangasem                     | Indonesia                |
|  251 | Nico Beckham           | Oliveira                       | Portugal                 |
|  495 | Nickolai Bound         | Xujiahe                        | China                    |
|  259 | Nettie Normadell       | Vargem Grande                  | Brazil                   |
|  983 | Nero Britian           | QoΓÇÖngΓÇÖirot Shahri          | Uzbekistan               |
|  558 | Nels Godbold           | Mariental                      | Namibia                  |
|  358 | Nellie Crumpe          | Santi Suk                      | Thailand                 |
|   66 | Neilla Poupard         | Jiangwei                       | China                    |
|  546 | Neel D'Alesio          | Huangcun                       | China                    |
|   74 | Neddie Quernel         | Dhanot                         | Pakistan                 |
|  961 | Nealson Mytton         | Yidao                          | China                    |
|  831 | Nathaniel Woodfield    | Liuche                         | China                    |
|  638 | Nataniel Thexton       | Makanya                        | Tanzania                 |
|  623 | Nariko Donnison        | Kongoussi                      | Burkina Faso             |
|  781 | Nara Speakman          | Nantang                        | China                    |
|  194 | Nappie Jarrett         | San Juan de Manapiare          | Venezuela                |
|  894 | Naomi Quincee          | Mentoro Wetan                  | Indonesia                |
|  838 | Nadean Goodfellow      | Renhe                          | China                    |
|  896 | Myranda Ohanessian     | J├ñrf├ñlla                     | Sweden                   |
|  812 | Myles Caccavella       | Zebrzydowice                   | Poland                   |
|  366 | Myca Sauniere          | Garhi Y─üs─½n                  | Pakistan                 |
|  334 | Murvyn Altofts         | El Capulin                     | Mexico                   |
|  895 | Moritz Topaz           | Rangpur                        | Bangladesh               |
|  644 | Morgen Burree          | Yalukou                        | China                    |
|  494 | Mordecai Batterton     | Acli                           | Philippines              |
|  252 | Modesty Crews          | Kameda-honch┼ì                 | Japan                    |
|  170 | Mitch Soloway          | Paranho                        | Portugal                 |
|  785 | Mirelle Creasey        | Hallsberg                      | Sweden                   |
|  960 | Minnie Forrester       | Pushkino                       | Russia                   |
|  902 | Minnaminnie Grindlay   | La Estancia                    | Honduras                 |
|   27 | Mina Acuna             | Uchiza                         | Peru                     |
|  337 | Milzie Borsay          | Suci Kaler                     | Indonesia                |
|  446 | Millisent Lehrian      | Tancheng                       | China                    |
|  690 | Mikey Orteaux          | Taozhuang                      | China                    |
|  530 | Mignonne Caillou       | Beidong                        | China                    |
|  400 | Michelina Kingcote     | Arnhem                         | Netherlands              |
|  969 | Michal Winder          | Salam├í                        | Honduras                 |
|  132 | Micah Clitheroe        | Cibatu                         | Indonesia                |
|  624 | Meridith Motto         | Sztum                          | Poland                   |
|  949 | Melodee Leyban         | Sano                           | Japan                    |
|  119 | Melisandra Hansie      | Svislach                       | Belarus                  |
|  516 | Melantha Vanacci       | Yegorlykskaya                  | Russia                   |
|   76 | Megan Coggings         | Galaz                          | Morocco                  |
|  227 | Meg Ferenc             | Fezna                          | Morocco                  |
|  503 | Meagan Cockaday        | Dayou                          | China                    |
|  262 | Maxy Schrinel          | Caraballeda                    | Venezuela                |
|  646 | Max Sibson             | Purut                          | Indonesia                |
|  851 | Maurita Mussettini     | Lukou                          | China                    |
|  250 | Maud Diche             | Daba                           | China                    |
|  795 | Matthieu Giorgiutti    | Dobryanka                      | Ukraine                  |
|  574 | Matthaeus Shreenan     | Kyzyl-Burun                    | Azerbaijan               |
|  459 | Matthaeus MacSporran   | Sankoutang                     | China                    |
|   50 | Matteo Calam           | ΓÇÖUn─übah                     | Afghanistan              |
|  765 | Marylou Hudel          | Yamango                        | Peru                     |
|   18 | Martin Ridder          | Lanas                          | Philippines              |
|   28 | Martin Culvey          | S├úo Jer├┤nimo                 | Brazil                   |
|  425 | Marti Bassindale       | Aanislag                       | Philippines              |
|  801 | Marthena Bruni         | Algoz                          | Portugal                 |
|  271 | Marris Wadly           | Amarillo                       | United States            |
|  339 | Marne Kliche           | Yuetang                        | China                    |
|  706 | Marlo Asche            | Shigu                          | China                    |
|  314 | Marleen Whitmore       | Arruda dos Vinhos              | Portugal                 |
|  714 | Marita McCreadie       | Yongchang                      | China                    |
|  990 | Maris Thurnham         | Plumtree                       | Zimbabwe                 |
|   39 | Marilyn Newland        | Jab┼éonica Polska              | Poland                   |
|  938 | Marilyn Grimme         | Kushar                         | Yemen                    |
|  937 | Marijo Pugsley         | Newbiggin                      | United Kingdom           |
|  172 | Maribeth Bannon        | Secang Barat                   | Indonesia                |
|  647 | Margot Guillart        | Marsh Harbour                  | Bahamas                  |
|  862 | Marge Kirkham          | 's-Hertogenbosch               | Netherlands              |
|  869 | Margaretha Kinsell     | Szeged                         | Hungary                  |
|  689 | Margareta Devers       | Al Fashn                       | Egypt                    |
|  575 | Margalo Scrivenor      | Trzcinica                      | Poland                   |
|  685 | Mareah Kinnear         | Camlachie                      | Canada                   |
|  954 | Marcus Eldin           | Mengyin                        | China                    |
|  292 | Marcelline Crompton    | Huata                          | Peru                     |
|  484 | Marcellina Bussetti    | Jatisari                       | Indonesia                |
| 1000 | Malynda Thombleson     | Kampungraja                    | Indonesia                |
|  412 | Mala Cesco             | Kansas City                    | United States            |
|  680 | Mahmud Gull            | Bamako                         | Mali                     |
|   91 | Mahmoud Gasperi        | WangΓÇÖer                      | China                    |
|  361 | Maggy Furze            | Najd al Jum─üΓÇÿ─½             | Yemen                    |
|  124 | Maggi Whitewood        | L├ñnsi-Turunmaa                | Finland                  |
|   49 | Mae Cohani             | Morelos                        | Mexico                   |
|  573 | Madel Brummitt         | Apartad├│                      | Colombia                 |
|  306 | Mack Botwood           | B┼éonie                        | Poland                   |
|  858 | Lyndel Morffew         | Changpo                        | China                    |
|  993 | Lyman Camsey           | Anuling                        | Philippines              |
|  245 | Luz Gabbatt            | Hoani                          | Comoros                  |
|  919 | Luz Burfoot            | Akaki                          | Cyprus                   |
|  813 | Luther McCloid         | Dzhayrakh                      | Russia                   |
|  173 | Lutero Booley          | Fengmu                         | China                    |
|  602 | Luelle Vasyunichev     | Sumurwaru                      | Indonesia                |
|  407 | Lucilia MacCollom      | Viterbo                        | Colombia                 |
|   75 | Lucias Gomby           | Wojciech├│w                    | Poland                   |
|    6 | Luciano Ferronel       | Mzuzu                          | Malawi                   |
|  502 | Luciano Casillis       | Minapan                        | Philippines              |
|  362 | Lucian Hambleton       | Toledo                         | United States            |
|  856 | Luce Coenraets         | Sukhinichi                     | Russia                   |
|  817 | Loydie Jopson          | Alabat                         | Philippines              |
|  589 | Lowe Eilhart           | Waiwejak                       | Indonesia                |
|  724 | Lovell Silverlock      | Kokopo                         | Papua New Guinea         |
|   87 | Louie Whitewood        | Amaury                         | Mauritius                |
|  639 | Lorita Scrymgeour      | Bhadrapur                      | Nepal                    |
|  213 | Lorianne Snazle        | Nangabere                      | Indonesia                |
|  143 | Loretta Everill        | Dongkeng                       | China                    |
|  976 | Loraine Bride          | Aurora                         | Philippines              |
|  737 | Lorain Chansonne       | Xiabao                         | China                    |
|  955 | Lonee Bembrigg         | Krasne                         | Poland                   |
|   26 | Locke Latchford        | Dushi                          | China                    |
|   31 | Lizzy Chaloner         | Cajueiro                       | Brazil                   |
|   72 | Livvyy Drinkwater      | Ciakar                         | Indonesia                |
|  232 | Linea Statter          | Kuttu                          | Micronesia               |
|  514 | Lindsay Wycliff        | Thung Song                     | Thailand                 |
|  447 | Lindi Klaaassen        | Belz                           | Ukraine                  |
|  220 | Lind Larratt           | Beilun                         | China                    |
|   56 | Lilith Surgood         | Vila Nova                      | Portugal                 |
|   15 | Liana Kerins           | Rolante                        | Brazil                   |
|  109 | Lia Garmons            | Franco da Rocha                | Brazil                   |
|  650 | Lewes Greneham         | Stockholm                      | Sweden                   |
|  670 | Letty Anthona          | Tianxingchang                  | China                    |
|  483 | Letti Feldharker       | Nigr├¡ta                       | Greece                   |
|  807 | Lesly Rushbrook        | Akn─½ste                       | Latvia                   |
|  615 | Leopold Langfat        | Santa Cruz do Bispo            | Portugal                 |
|  568 | Leonora Fuller         | Badian                         | Philippines              |
|  578 | Leonerd Goning         | Dembeni                        | Mayotte                  |
|  162 | Lenette Kellar         | Tupaciguara                    | Brazil                   |
|  978 | Lemmy Ziemke           | Maruoka                        | Japan                    |
|  772 | Leisha Margrie         | Sitrah                         | Bahrain                  |
|  387 | Leif Merrikin          | San Teodoro                    | Philippines              |
|  327 | Leese Dowtry           | Hongchun                       | China                    |
|  798 | Leese Clackers         | Xianzong                       | China                    |
|  898 | Leelah Irlam           | Jambuwerkrajan                 | Indonesia                |
|  980 | Leda Zorzutti          | Paulo Afonso                   | Brazil                   |
|  286 | Leanora Elloit         | Asemanis                       | Indonesia                |
|  633 | Lawrence Pellissier    | Zip├írion                      | Greece                   |
|  137 | Lawrence Gerber        | Naha-shi                       | Japan                    |
|  588 | Lavena Chown           | Tarnowskie G├│ry               | Poland                   |
|  825 | Laurice Gilhespy       | Nagrog                         | Indonesia                |
|  911 | Laurent Beasley        | Lianhe                         | China                    |
|  217 | Lauren Rosenstengel    | Wilcza                         | Poland                   |
|  777 | Lauralee Zealander     | Awilega                        | Indonesia                |
|  997 | Laughton Rosina        | Hagi                           | Japan                    |
|    5 | Latrena Mighele        | Zhujiang                       | China                    |
|  280 | Latrena Kubas          | Mellie─ºa                      | Malta                    |
|  104 | Latisha Kohring        | Kaw─Öczyn                      | Poland                   |
|  733 | Laraine Blouet         | Lunenburg                      | Canada                   |
|  809 | Langsdon Benadette     | Asaka                          | Japan                    |
|  696 | Laird Laxen            | Parabon                        | Indonesia                |
|  559 | Laird Doughton         | P├⌐cs                          | Hungary                  |
|  790 | Lacey Huton            | Ivouani                        | Comoros                  |
|  289 | Kylila Sirrell         | ─Çsbe Tefer─½                  | Ethiopia                 |
|  300 | Kylie Novis            | Nakama                         | Japan                    |
|  490 | Kylen Tukesby          | Shuixi                         | China                    |
|  396 | Kristo Jeannesson      | Basista                        | Philippines              |
|  745 | Koenraad Agerskow      | Merdeka                        | Indonesia                |
|  397 | Kizzee Skellion        | Pointe-├á-Pitre                | Guadeloupe               |
|  538 | Kitty Himsworth        | Tuhe                           | China                    |
|  612 | Kirstyn Brice          | Yayao                          | China                    |
|  867 | Kimbra Keppel          | Mahong                         | China                    |
|  946 | Kiah Coronas           | Zevenaar                       | Netherlands              |
|  661 | Kiah Airey             | Hepu                           | China                    |
|  191 | Kevyn Targetter        | Al May─üd─½n                   | Syria                    |
|  522 | Kevyn Elham            | Anle                           | China                    |
|  996 | Kermy Narducci         | Aizi                           | China                    |
|   81 | Kennith Matyja         | Hayan Hudong                   | China                    |
|  535 | Kennie Flatte          | Seres                          | Philippines              |
|  380 | Kennan Boij            | Butungan                       | Indonesia                |
|  552 | Kendricks Wakefield    | Sinarharapan                   | Indonesia                |
|   12 | Kellsie Gawke          | Taurage                        | Lithuania                |
|  836 | Kellen Giorgetti       | Vaitogi                        | American Samoa           |
|  845 | Kellby Westphalen      | Sandefjord                     | Norway                   |
|  780 | Kellby Sauvain         | Santa Cruz del Norte           | Cuba                     |
|  540 | Keelby Saddleton       | Tr┼╛i─ì                        | Slovenia                 |
|  471 | Katrina Petrozzi       | Magisterial                    | Mexico                   |
|  929 | Katinka Wisby          | Velyki Kopany                  | Ukraine                  |
|  837 | Kathy Longea           | Wojs┼éawice                    | Poland                   |
|  261 | Kasey Osgorby          | Rantaupanjangkiri              | Indonesia                |
|  555 | Karylin Piatkowski     | Pravda                         | Russia                   |
|  951 | Karna Louche           | Migues                         | Uruguay                  |
|  932 | Karna Fetteplace       | Shuozhou                       | China                    |
|  164 | Karna Cashford         | Gayamsari                      | Indonesia                |
|  273 | Karisa Juniper         | Motala                         | Sweden                   |
|   67 | Kain Just              | Balazar                        | Portugal                 |
|  278 | Justino Petrou         | Trnava                         | Czech Republic           |
|  658 | Junie Carvil           | Seixo                          | Portugal                 |
|  821 | Junette Zanni          | Fenggao                        | China                    |
|  424 | Julietta Medlicott     | Luklukan                       | Philippines              |
|  445 | Julienne Muncey        | Oton                           | Philippines              |
|  430 | Julianna Edwardson     | Lityn                          | Ukraine                  |
|  859 | Juliann Elvy           | Las Minas                      | Panama                   |
|  731 | Juliane Hurdiss        | Holgu├¡n                       | Cuba                     |
|  460 | Juan Malimoe           | Zhangye                        | China                    |
|    3 | Joyann Hackley         | Ortigueira                     | Brazil                   |
|  579 | Joya Tunny             | BiΓÇÖr ß╕¿─üt                  | Yemen                    |
|  596 | Joya McParland         | Kulautuva                      | Lithuania                |
|  204 | Jorry Ivanishev        | Tongxing                       | China                    |
|  493 | Jori Yancey            | S├╢derhamn                     | Sweden                   |
|  200 | Jordana Seefeldt       | Kroya                          | Indonesia                |
|  242 | Jordana Raithbie       | Atins                          | Brazil                   |
|  802 | Jordain Mingasson      | Kosonsoy Shahri                | Uzbekistan               |
|   34 | Johny McGrann          | Longlisuo                      | China                    |
|  891 | Johnathan Partington   | Kimry                          | Russia                   |
|  176 | Johnathan Betz         | Qu├¡pama                       | Colombia                 |
|  417 | Johannah Penney        | Tebon                          | Indonesia                |
|   86 | Johanna Dreigher       | Taiping                        | China                    |
|  882 | Joellen Schiersch      | Laka                           | Indonesia                |
|  565 | Joell Laroux           | Orikum                         | Albania                  |
|  241 | Jocelyn Caret          | Altos                          | Paraguay                 |
|  841 | Jobyna Perico          | Sydney                         | Australia                |
|  591 | Jobie Olivo            | Myitkyina                      | Myanmar                  |
|  571 | Jinny Stoyell          | Yar─½m                         | Yemen                    |
|  729 | Jimmy Anyene           | Ganpu                          | China                    |
|  749 | Jessie Turnbull        | San Agustin                    | Philippines              |
|  498 | Jesselyn Ugolini       | San Javier                     | Chile                    |
|  532 | Jesse Goulbourn        | Gremyachinsk                   | Russia                   |
|  904 | Jessalyn Ochiltree     | UstΓÇÖ-Kachka                  | Russia                   |
|  312 | Jerrold Clark          | Kalenderovci Donji             | Bosnia and Herzegovina   |
|  743 | Jerrilyn Ollin         | Masuguru                       | Tanzania                 |
|  628 | Jeromy Janacek         | Gali┼╛ana                      | Croatia                  |
|  523 | Jeri Tamplin           | Slobozia                       | Moldova                  |
|  835 | Jeramey Bettinson      | Dingtao                        | China                    |
|  507 | Jeffie Butson          | Bratislava                     | Slovakia                 |
|  180 | Jedd Pimer             | Jastrz─Öbia                    | Poland                   |
|   48 | Jedd Haslen            | Huangcun                       | China                    |
|  106 | Jedd Dodwell           | Staraya Derevnya               | Russia                   |
|  406 | Jeannie Wissbey        | Taodian                        | China                    |
|  632 | Jeannie Meriel         | ┼üopuszno                      | Poland                   |
|  783 | Jasper Aronsohn        | Krupanj                        | Serbia                   |
|  873 | Jasen Ellse            | Sabanagrande                   | Colombia                 |
|  441 | Janeta Leggan          | Longyearbyen                   | Svalbard and Jan Mayen   |
|  717 | Janean Snoddon         | Chicheng                       | China                    |
|   93 | Janaya Tremeer         | Bauang                         | Philippines              |
|  123 | Jacquetta Elderidge    | Mrganush                       | Armenia                  |
|  520 | Jack Hamon             | Guluoshan                      | China                    |
|  723 | Jacinda Sibthorp       | Mosj├╕en                       | Norway                   |
|  332 | Izaak Zaniolini        | Neß║ûalim                      | Israel                   |
|  900 | Ives Meijer            | Porto Real                     | Brazil                   |
|  542 | Ivan Glendining        | Bangil                         | Indonesia                |
|  240 | Issi Ellicott          | Yingjiang                      | China                    |
|  163 | Isabella Keggin        | Sukhirin                       | Thailand                 |
|  290 | Isaak Sirrell          | Banjar Banyualit               | Indonesia                |
|  174 | Isaak Fattori          | Marechal Deodoro               | Brazil                   |
|  439 | Irwin Papa             | Sukagawa                       | Japan                    |
|  370 | Irma Frany             | Huozhuangzi                    | China                    |
|  580 | Iolande Sawkin         | Oliveiras                      | Portugal                 |
|  607 | Ingelbert Lawman       | H─½sh                          | Syria                    |
|   43 | Inga Petrelli          | M├╜to                          | Czech Republic           |
|  750 | Inesita Gallegos       | Monte Plata                    | Dominican Republic       |
|  759 | Imelda Prisley         | Oskarshamn                     | Sweden                   |
|   52 | Ilsa Jurgen            | Figueiras                      | Portugal                 |
|  648 | Illa Kenworth          | Sk├╢vde                        | Sweden                   |
|  371 | Ilaire Schuler         | Guamo                          | Colombia                 |
|   37 | Ignazio Ughini         | Liudong                        | China                    |
|  115 | Idaline Croster        | Panoongan                      | Indonesia                |
|  258 | Ida Kingsnoad          | Yuzhai                         | China                    |
|  550 | Iain Glowacha          | Libertador General San Mart├¡n | Argentina                |
|  606 | Hy Earey               | Xinxi                          | China                    |
|  117 | Hussein Scaice         | Victoria                       | Malta                    |
|   40 | Humfrey Danielian      | Pagsabangan                    | Philippines              |
|  129 | Humbert Oby            | Mossor├│                       | Brazil                   |
|  847 | Hubert Ord             | Jinkou                         | China                    |
|  178 | Hube Passfield         | Warungtanjung                  | Indonesia                |
|  399 | Howard Webster         | San Ramon                      | Philippines              |
|   13 | Holly Rockell          | Khv─üns─ür                     | Iran                     |
|  478 | Hobie Ottley           | Fushun                         | China                    |
|  157 | Hobart Mochar          | Jeberos                        | Peru                     |
|  237 | Hilarius Efford        | Alofi                          | Niue                     |
|  988 | Hew Spatarul           | Cheongsong gun                 | South Korea              |
|  738 | Hetti Nevet            | Jianxin                        | China                    |
|  265 | Hestia Blackader       | Rungis                         | France                   |
|  468 | Hervey Heck            | Zb┼»ch                         | Czech Republic           |
|  449 | Hertha Stiffell        | Baltimore                      | United States            |
|  321 | Hersh Heineking        | Welkom                         | South Africa             |
|  467 | Herculie Clew          | Carpalho                       | Portugal                 |
|   58 | Herbert Burnside       | Jutrosin                       | Poland                   |
|  453 | Henrie Febvre          | Mat-i                          | Philippines              |
|  768 | Helsa Tompkiss         | Besan├ºon                      | France                   |
|  504 | Helene Basten          | Oepula                         | Indonesia                |
|  874 | Heinrik Ghirardi       | Cabano                         | Canada                   |
|  541 | Heidi Roxburch         | Wujing                         | China                    |
|  416 | Heddie Davydychev      | Sandayong Sur                  | Philippines              |
|   69 | Haywood McClinton      | Mamer                          | Luxembourg               |
|  141 | Hatty Juste            | Bousso                         | Chad                     |
|  233 | Haskell Merigon        | Donskoye                       | Russia                   |
|  438 | Harriet Clarkin        | Bagong Barrio                  | Philippines              |
|  970 | Harp Kauscher          | Kertahayu                      | Indonesia                |
|  560 | Harmon Moryson         | JiangΓÇÖan                     | China                    |
|  107 | Harland Humpherston    | Espinho                        | Portugal                 |
|  450 | Hamil Beynon           | Pananaw                        | Philippines              |
|  906 | Haleigh Phateplace     | Jocotenango                    | Guatemala                |
|  472 | Gweneth Burford        | Sabandia                       | Peru                     |
|  203 | Guthrie Massie         | Chacapalpa                     | Peru                     |
|  324 | Gusti Kerrich          | Tame                           | Colombia                 |
|  669 | Gustavus Bewsy         | Tarica                         | Peru                     |
|  405 | Gustave Bruggeman      | Chenxiang                      | China                    |
|  454 | Gunter Haney           | S├úo Miguel do Rio Torto       | Portugal                 |
|  908 | Gunter Fincham         | Kal├╜ves Polyg├╜rou            | Greece                   |
|  359 | Guinevere Tanzig       | Troms├╕                        | Norway                   |
|  915 | Griswold Balentyne     | Jishu                          | China                    |
|  935 | Gretta Dran            | Fucha                          | China                    |
|  549 | Grethel Bevir          | Carvalhinho                    | Portugal                 |
|  611 | Gordy Kubicka          | Cabanas de Viriato             | Portugal                 |
|  767 | Gordan Screen          | Changqing                      | China                    |
|  181 | Goraud Shenfish        | Winong                         | Indonesia                |
|  870 | Godwin Bickle          | Doln├¡ Cerekev                 | Czech Republic           |
|  501 | Glory Kilsby           | Maayong Tubig                  | Philippines              |
|  389 | Glori Vollam           | Hushan                         | China                    |
|  269 | Glenn Cotilard         | Ape                            | Latvia                   |
|  235 | Glenn Blizard          | Espinosa                       | Brazil                   |
|  979 | Glenine Belfrage       | Zhuhe                          | China                    |
|  166 | Glen Woodcroft         | Guyam Malaki                   | Philippines              |
|  958 | Gladys Cicchillo       | Mporokoso                      | Zambia                   |
|   63 | Gladi Lennard          | Ombou├⌐                        | Gabon                    |
|  341 | Glad Colam             | Ghanzi                         | Botswana                 |
|  741 | Glad Castells          | Mina Clavero                   | Argentina                |
|  215 | Giraud Vickarman       | Nambalan                       | Philippines              |
|  291 | Giraldo Castagnaro     | Saint-Paul                     | Reunion                  |
|  916 | Giovanna Sangster      | Tajerouine                     | Tunisia                  |
|  367 | Gillie Craigg          | El Mirador                     | Mexico                   |
|  823 | Giffie Kropp           | Krajan Baru                    | Indonesia                |
|  726 | Gib Hamfleet           | Starodub                       | Russia                   |
|   57 | Gianna Sear            | Llipa                          | Peru                     |
|  491 | Gertrudis Wood         | Petare                         | Venezuela                |
|  962 | Gertrud Houlridge      | Jianshan                       | China                    |
|  199 | Gerianna Hackleton     | AltufΓÇÖyevskiy                | Russia                   |
|  190 | Georgetta Janus        | Vinkkil├ñ                      | Finland                  |
|  146 | Georges Lebang         | Kholmsk                        | Russia                   |
|  564 | Gennifer Garley        | Juegang                        | China                    |
|  725 | Gennie Caughte         | Pis├úo                         | Portugal                 |
|  298 | Genevra Shurlock       | Tarumizu                       | Japan                    |
|   97 | Gaynor Cumberbatch     | Los Patios                     | Colombia                 |
|  864 | Gayla Athy             | San Casimiro                   | Philippines              |
|  184 | Gasper Sercombe        | Sukacai Tengah                 | Indonesia                |
|  218 | Gaspard Rathbourne     | Sindanghayu                    | Indonesia                |
|  912 | Garwood Fridlington    | Novokhovrino                   | Russia                   |
|  422 | Garwood Boij           | Johor Bahru                    | Malaysia                 |
|  346 | Gardie MacClure        | Sagang                         | Philippines              |
|   54 | Gardie Doerr           | Kiambu                         | Kenya                    |
|  365 | Gardener Domerc        | Changtang                      | China                    |
|  343 | Garald McFadin         | Shicha                         | China                    |
|  660 | Galen Sutworth         | Jeremi                         | Haiti                    |
|  304 | Gale Lanmeid           | Pravdinsk                      | Russia                   |
|  677 | Gage Bengoechea        | Jiangshan                      | China                    |
|  854 | Gaby Fulep             | Tours                          | France                   |
|  672 | Gabriela Cromarty      | Jiamiao                        | China                    |
|  272 | Gabe Batthew           | Santo Domingo                  | Philippines              |
|  818 | Gabbi Atcheson         | Daloa                          | Ivory Coast              |
|  497 | Fulton MacGow          | Churubamba                     | Peru                     |
|  421 | Friederike Marusic     | Andorinha                      | Portugal                 |
|  861 | Fredrika Pearse        | Yasinya                        | Ukraine                  |
|  485 | Freddy Wiburn          | DabaoΓÇÖanzhen                 | China                    |
|  382 | Freddy Fierro          | Kiruna                         | Sweden                   |
|  875 | Freddie Kleinberer     | San Antonio                    | Philippines              |
|  477 | Frazier Tow            | Gaya                           | Nigeria                  |
|  512 | Frazer Litchfield      | La Paz Centro                  | Nicaragua                |
|  211 | Franz Lovegrove        | Leyuan                         | China                    |
|  182 | Frankie Tolworthy      | Sukakerta                      | Indonesia                |
|   98 | Francoise Oswald       | Melioratyvne                   | Ukraine                  |
|  810 | Franciska Challoner    | Jincun                         | China                    |
|  931 | Francisco Cluney       | Digah                          | Azerbaijan               |
|  974 | Francesco Garrigan     | Yuanjiazhuang                  | China                    |
|  697 | Florella Petraitis     | Glad                           | Philippines              |
|   30 | Flin Fardo             | Daeosin Satu                   | Indonesia                |
|  947 | Fitz Aisman            | Corona                         | United States            |
|  839 | Findlay Khrishtafovich | Malaryta                       | Belarus                  |
|   33 | Fidela Mossdale        | Tingsryd                       | Sweden                   |
|  584 | Fianna Oris            | Zevgolatei├│                   | Greece                   |
|  693 | Fianna Lambie          | Hanting                        | China                    |
|  408 | Fey McBain             | Marab├í                        | Brazil                   |
|  527 | Ferd Oddboy            | Tourcoing                      | France                   |
|  531 | Feliza Rugge           | P├╜rgos                        | Greece                   |
|  982 | Faythe Goghin          | Terong                         | Indonesia                |
|  402 | Farlay Hatfull         | Chengbei                       | China                    |
|  410 | Fancy Etteridge        | Changzheng                     | China                    |
|   90 | Fairfax Ficken         | Jangkat                        | Indonesia                |
|  198 | Fair Pourveer          | Ribeir├úo das Neves            | Brazil                   |
|  754 | Ewen Jansie            | Grand Rapids                   | United States            |
|  910 | Evy Folini             | Eastern Suburbs Mc             | Australia                |
|  352 | Eveline Brandone       | Chy┼íky                        | Czech Republic           |
|  796 | Evelin Nattrass        | Xuebu                          | China                    |
|  977 | Eve Seedman            | S┼½r─ün                        | Iran                     |
|  193 | Evangelia Duncan       | Baisha                         | China                    |
|  120 | Ev Veitch              | ├ìasmos                        | Greece                   |
|  168 | Euphemia Boik          | Yihe                           | China                    |
|  815 | Eugenie Creus          | Birmingham                     | United States            |
|  243 | Eugene Sturman         | ┼áirvintos                     | Lithuania                |
|  687 | Eugene Gouldthorpe     | Taoyuan                        | China                    |
|  288 | Euell Blackater        | Sarrazola                      | Portugal                 |
|  336 | Ethelred Dayley        | Xiangyang                      | China                    |
|   71 | Esme Pridgeon          | La Celia                       | Colombia                 |
|  926 | Erskine Argrave        | Paris 01                       | France                   |
|  686 | Erin Taunton.          | Puqi                           | China                    |
|  899 | Erin Fraczkiewicz      | Rio do Sul                     | Brazil                   |
|  771 | Emylee Pendrill        | Tsingoni                       | Mayotte                  |
|  995 | Emyle Ablott           | Rato                           | Indonesia                |
|  562 | Emmott Abramof         | Leer                           | South Sudan              |
|  930 | Emmery Hulme           | Al ß╕¿umayd─üt                 | Yemen                    |
|  147 | Emlyn Varah            | Kiryandongo                    | Uganda                   |
|  234 | Emlen Adnet            | Liqizhuang                     | China                    |
|  151 | Emerson Mostin         | Lutowiska                      | Poland                   |
|  376 | Emelia McIlenna        | Mojosari                       | Indonesia                |
|  563 | Emanuel Filipowicz     | Damiao                         | China                    |
|   47 | Emalee Brixham         | Nevinnomyssk                   | Russia                   |
|   24 | Elvin Edmundson        | Shakhty                        | Russia                   |
|  924 | Elva Robert            | Sancha                         | China                    |
|  221 | Elspeth Latus          | Haozigang                      | China                    |
|  463 | Elsi Hoyt              | Vitrolles                      | France                   |
|  569 | Elnore Duckerin        | Nora                           | Sweden                   |
|  735 | Elly Pigeram           | Dongdai                        | China                    |
|  755 | Ella Ullett            | Xinrong                        | China                    |
|  285 | Elissa Gathwaite       | Xuanzhou                       | China                    |
|  799 | Elissa Blackley        | Yangyong                       | China                    |
|  287 | Elihu Soan             | Xiangqiao                      | China                    |
|  433 | Eli Engelbrecht        | Oklahoma City                  | United States            |
|  492 | Eldon Stokey           | Furmanov                       | Russia                   |
|   78 | Eldin Esel             | ├ûrebro                        | Sweden                   |
|  827 | Elbertina Bradnam      | Xinhua                         | China                    |
|  994 | Elberta Sleith         | La Dicha                       | Philippines              |
|  105 | Elayne Maggill'Andreis | Manique de Baixo               | Portugal                 |
|  855 | Eileen Shelsher        | Paris 16                       | France                   |
|   22 | Efren Quantick         | Sumilao                        | Philippines              |
|  662 | Eduino Berkeley        | Jingdezhen                     | China                    |
|  804 | Edmon Tedahl           | Lomba                          | Portugal                 |
|  889 | Edmon Pagett           | Kadubera                       | Indonesia                |
|  651 | Edd Smallthwaite       | Partesh                        | Kosovo                   |
|  357 | Ebeneser Mountjoy      | Kosmach                        | Ukraine                  |
|  136 | Eadith De Coursey      | Naberezhnyye Chelny            | Russia                   |
|  586 | Dyna Drepp             | Shalang                        | China                    |
|  684 | Dylan McAllaster       | Goundam                        | Mali                     |
|  506 | Dyann Chartres         | Nuevo Emperador                | Panama                   |
|  553 | Durante Graysmark      | Ramalhal                       | Portugal                 |
|  393 | Durant Barmadier       | Qianjin                        | China                    |
|  826 | Dunstan Harrismith     | Maquiapo                       | Philippines              |
|  524 | Dunn Godart            | Ngawi                          | Indonesia                |
|  570 | Duke MacIver           | Richard-Toll                   | Senegal                  |
|  618 | Duke Bracegirdle       | Virginia Beach                 | United States            |
|  665 | Dud Antcliff           | Los Angeles                    | United States            |
|  347 | Dreddy Schroder        | Karangpaningal                 | Indonesia                |
|  155 | Doti Williams          | Batusangkar                    | Indonesia                |
|  913 | Dorise Blinco          | Tchollir├⌐                     | Cameroon                 |
|  154 | Dorine Kyles           | Dungkek Laok                   | Indonesia                |
|  517 | Dorey Aps              | Nong Phai                      | Thailand                 |
|  257 | Dorette Oldacres       | Jami                           | Indonesia                |
|  525 | Doralyn Rew            | Zhenlai                        | China                    |
|  561 | Donni Morrad           | Panzhou                        | China                    |
|  229 | Donna Mougenel         | Bouna                          | Ivory Coast              |
|  427 | Dona Spinetti          | Matanzas                       | Dominican Republic       |
|  860 | Dix Glenister          | Gwangtan                       | South Korea              |
|   89 | Dion Rummins           | Leles                          | Indonesia                |
|  414 | Dion Fatscher          | Rio Piracicaba                 | Brazil                   |
|  621 | Dimitry Gard           | Tangquan                       | China                    |
|  223 | Dimitri Middleweek     | Cisewu                         | Indonesia                |
|  761 | Dilly Saket            | Retreat                        | South Africa             |
|  966 | Dieter Wilce           | Lazeshchyna                    | Ukraine                  |
|  616 | Dicky Guihen           | Sievi                          | Finland                  |
|  942 | Diannne Medlar         | Kolpny                         | Russia                   |
|  543 | Dewitt Servante        | Jami                           | Indonesia                |
|  140 | Dewey Gidney           | Bov                            | Bulgaria                 |
|  907 | Dew Mart               | Be┼é┼╝ec                       | Poland                   |
|  968 | Devon Wadhams          | Cumming                        | United States            |
|  853 | Desiri Haylands        | Petrovskaya                    | Russia                   |
|  901 | Desdemona Bedham       | Rancapeundey                   | Indonesia                |
|  567 | Derron Speere          | Barrunchal                     | Portugal                 |
|  626 | Derrik Halleday        | Czarna D─àbr├│wka              | Poland                   |
|  598 | Derrick Danbrook       | Pul-e Sang─½                   | Afghanistan              |
|  793 | Derby Cabena           | As S┼½q al Jad─½d              | Yemen                    |
|   29 | Der Gillbanks          | Jonava                         | Lithuania                |
|  885 | Denney Hearthfield     | Panjiawan                      | China                    |
|  890 | Demetrius Kiehnlt      | Kalumpang                      | Indonesia                |
|   21 | Demetri Bert           | Lob├úo                         | Portugal                 |
|  945 | Delora Poynter         | Zhaogezhuang                   | China                    |
|  763 | Delmor Gilbard         | Banjar Kawan                   | Indonesia                |
|  712 | Dela Manley            | Yanggang                       | China                    |
|  655 | Del Sibbe              | Ordzhonikidze                  | Kazakhstan               |
|  928 | Del Goodlet            | Yekimovichi                    | Russia                   |
|  659 | Del Ferreres           | Kariat Arkmane                 | Morocco                  |
|  760 | Dee Heiden             | Novi Vinodolski                | Croatia                  |
|  226 | Deane Simonaitis       | Altos                          | Brazil                   |
|  426 | Dean Horlick           | Tercena                        | Portugal                 |
|  634 | De witt Bothie         | Ayd┼½n                         | Jordan                   |
|  683 | Dayna Carlisle         | Orzu                           | Tajikistan               |
|  800 | Davis Bidewell         | Sipeng                         | China                    |
|  830 | Davidde Gabrieli       | Novodvinsk                     | Russia                   |
|   80 | Dasi Leaming           | Al Jubayhah                    | Jordan                   |
|  377 | Dasi Kaspar            | Xingguo                        | China                    |
|  716 | Darya Barnard          | Dallas                         | United States            |
|  238 | Darwin Woodgate        | B─ümy─ün                       | Afghanistan              |
|  876 | Darsie Lowth           | Narva                          | Estonia                  |
|  443 | Darrelle Brideau       | Mayong                         | Indonesia                |
|  964 | Danita Stanley         | Barrio San Luis                | Colombia                 |
|  663 | Dani Muehler           | Haputale                       | Sri Lanka                |
|  986 | Damaris McKeurtan      | Yunhe                          | China                    |
|  794 | Dall Babbidge          | Kang                           | Botswana                 |
|  756 | Dalenna McQuillen      | Qingshi                        | China                    |
|  316 | Daisy Dennistoun       | Ocoyo                          | Peru                     |
|  432 | Dacey Jolley           | Debre WerkΓÇÖ                  | Ethiopia                 |
|  158 | Cyb Burthom            | Tupiza                         | Bolivia                  |
|   79 | Cully Folini           | Kuala Terengganu               | Malaysia                 |
|  475 | Culley Tosdevin        | Kveda ChkhorotsΓÇÖqΓÇÖu        | Georgia                  |
|   45 | Cross Newlands         | Uchaly                         | Russia                   |
|  939 | Cristine Crevagh       | Pasirmukti                     | Indonesia                |
|  476 | Cris Jezzard           | Alcoutim                       | Portugal                 |
|  481 | Crin Prandin           | Guicheng                       | China                    |
|  296 | Crawford Mairs         | Xidoupu                        | China                    |
|  609 | Cozmo Potes            | Montpellier                    | France                   |
|  496 | Cozmo Inkster          | ├älvsj├╢                       | Sweden                   |
|   19 | Courtney Malitrott     | Wolbrom                        | Poland                   |
|  649 | Cosimo Malam           | Manabo                         | Philippines              |
|  751 | Corty Simmill          | Nalsian Norte                  | Philippines              |
|    4 | Corly Wybrew           | Jamund├¡                       | Colombia                 |
|  165 | Cori d'Arcy            | Posse                          | Brazil                   |
|  230 | Coop Judgkins          | Klonowa                        | Poland                   |
|  325 | Constancia Spelman     | Penalva                        | Brazil                   |
|  881 | Consolata Ragbourne    | Huangtian                      | China                    |
|  149 | Conrado Eggleston      | Millet                         | Canada                   |
|  581 | Conni Dumbar           | Asahi                          | Japan                    |
|  125 | Colman Klimowicz       | Ume├Ñ                          | Sweden                   |
|  511 | Collie Reubel          | Orip├ñ├ñ                       | Finland                  |
|  360 | Codi Stenning          | Sumberdadi                     | Indonesia                |
|  474 | Clyde Kraut            | Nossa Senhora da Gl├│ria       | Brazil                   |
|  998 | Clotilda Skeels        | Liulin                         | China                    |
|  920 | Clo Reilinger          | Bß║┐n Cß║ºu                    | Vietnam                  |
|  133 | Cleveland Reitenbach   | Fuente de Oro                  | Colombia                 |
|  688 | Clerc Beeble           | Jorong                         | Indonesia                |
|  510 | Cleon Orcott           | Businovo                       | Russia                   |
|  989 | Clemmy Carnall         | Uzgen                          | Kyrgyzstan               |
|  887 | Clemmie Jaray          | Ben├⌐ Beraq                    | Israel                   |
|  940 | Clem Naseby            | Rentian                        | China                    |
|  489 | Claybourne Speake      | Banjar Pangkungtibah Selatan   | Indonesia                |
|  344 | Claudette Mattin       | Escuintla                      | Guatemala                |
|  159 | Claudell Volke         | Tocok                          | Philippines              |
|  310 | Clarinda Carillo       | Mabai                          | China                    |
|  236 | Clarette Bygraves      | La Plaine-Saint-Denis          | France                   |
|  448 | Chrystel Peters        | Klenovyy                       | Ukraine                  |
|   38 | Chrisy Royson          | Khvatovka                      | Russia                   |
|  786 | Christy Jordan         | Mayanhe                        | China                    |
|  871 | Christy Denekamp       | Niederanven                    | Luxembourg               |
|  700 | Christoph Forman       | Petawawa                       | Canada                   |
|   14 | Christiana Barnson     | Potok Z┼éoty                   | Poland                   |
|  131 | Christalle Baldi       | Beyla                          | Guinea                   |
|  694 | Chrissie Danovich      | SolΓÇÖtsy                      | Russia                   |
|  253 | Chris Warmington       | Cikayas                        | Indonesia                |
|  888 | Chico Petts            | Florencia                      | Colombia                 |
|  857 | Cheston Abrashkin      | Jiyizhuang                     | China                    |
|  849 | Ches Crolla            | Funza                          | Colombia                 |
|  373 | Cherida Tenant         | Dabaozi                        | China                    |
|  808 | Chen Dunsmuir          | Jemielno                       | Poland                   |
|  390 | Chaunce Malim          | Batken                         | Kyrgyzstan               |
|  921 | Chase Tolumello        | Lab├⌐                          | Guinea                   |
|  544 | Charleen Durnall       | Shashi                         | China                    |
|  675 | Charlean McGray        | Diamantino                     | Brazil                   |
|  281 | Charity Firmin         | Kornyn                         | Ukraine                  |
|  934 | Chane Levett           | Parang                         | Indonesia                |
|  865 | Celle Wimmer           | Huitang                        | China                    |
|  707 | Celka Merington        | Kota Bharu                     | Malaysia                 |
|  409 | Celesta Broske         | Lang Suan                      | Thailand                 |
|  739 | Cecily McAdam          | Xiongchi                       | China                    |
|   16 | Cecilla Ffrench        | Mudanjiang                     | China                    |
|  740 | Cecil Tukely           | Porsgrunn                      | Norway                   |
|  617 | Cecil Tallyn           | ─îair                          | Macedonia                |
|  840 | Caz Coomer             | Bungkal                        | Indonesia                |
|   41 | Cayla Hales            | Nanmuping                      | China                    |
|  701 | Catlaina Rimington     | J├╢nk├╢ping                    | Sweden                   |
|  392 | Cathryn Tuckett        | Lamotrek                       | Micronesia               |
|  145 | Cathrine Spalding      | Aian├¡                         | Greece                   |
|   60 | Cathrine Harriagn      | Chinameca                      | El Salvador              |
|   82 | Cash Heersma           | Saparua                        | Indonesia                |
|  536 | Caryl MacCallam        | Lappeenranta                   | Finland                  |
|  764 | Carrissa O'Hara        | Caacup├⌐                       | Paraguay                 |
|   53 | Carolyne Sandells      | Bajera                         | Indonesia                |
|  135 | Carolee Ortells        | Yanwan                         | China                    |
|  719 | Carmon Gatman          | Seixal                         | Portugal                 |
|  268 | Carmina Selburn        | Soly                           | Belarus                  |
|  774 | Carlina Olliff         | San Jose                       | Philippines              |
|  747 | Carlin Jakubczyk       | Renhe                          | China                    |
|  202 | Carita Missenden       | Cao Th╞░ß╗úng                  | Vietnam                  |
|  635 | Carissa Le Fleming     | A┼ƒ ┼₧afaqayn                  | Yemen                    |
|  208 | Carin Edwardes         | ─Çsm─ür                        | Afghanistan              |
|  678 | Carena Mulbry          | K├╕benhavn                     | Denmark                  |
|  590 | Car Kleinhandler       | Jamao al Norte                 | Dominican Republic       |
|  152 | Candi Loadman          | Pancoran                       | Indonesia                |
|  630 | Cammy Jerosch          | Chalamarca                     | Peru                     |
|  126 | Camile Prophet         | Mulanje                        | Malawi                   |
|  169 | Cam Cunrado            | Baxiangshan                    | China                    |
|  653 | Callida Putman         | Salakuray                      | Indonesia                |
|  284 | Calli Skyrm            | Inriville                      | Argentina                |
|  423 | Calla Pauli            | Singgit                        | Indonesia                |
|  833 | Caddric Skacel         | Sebasang                       | Indonesia                |
|  679 | Burlie Banck           | Norsborg                       | Sweden                   |
|  101 | Burk Adel              | Hongtang                       | China                    |
|  187 | Bud Pauwel             | Riobamba                       | Ecuador                  |
|  207 | Bud Eynald             | Gereshk                        | Afghanistan              |
|  529 | Bucky Ludlem           | Yuktae-dong                    | North Korea              |
|    2 | Brucie Oland           | Pet┼Övald                      | Czech Republic           |
|  844 | Bruce Martell          | Itu                            | Nigeria                  |
|  834 | Brooks Brecon          | Gomunice                       | Poland                   |
|   65 | Brooke Chadwick        | Batticaloa                     | Sri Lanka                |
|  600 | Brok Copyn             | Lewolen                        | Indonesia                |
|  769 | Brock Braybrook        | Hancheng                       | China                    |
|  247 | Brittani Deschlein     | Igrejinha                      | Brazil                   |
|  791 | Britney McOrkil        | Tabia                          | Morocco                  |
|  592 | Brita Highman          | Zhengwan                       | China                    |
|  462 | Brina Venable          | Cilolongokan                   | Indonesia                |
|   32 | Brietta Winskill       | Ciampea                        | Indonesia                |
|  183 | Bridgette Jerrold      | Tangwang                       | China                    |
|  927 | Brice Naire            | Mah├⌐bourg                     | Mauritius                |
|  244 | Briant Wethered        | Mliwang                        | Indonesia                |
|  668 | Brianna Lafflin        | Kal─üt-e N─üder─½              | Iran                     |
|  279 | Bria Gwillym           | Krasnogvardeyets               | Russia                   |
|   25 | Brett Boissier         | Al MaΓÇÿall─üΓÇÖ               | Yemen                    |
|  482 | Breena Lorking         | Imbituba                       | Brazil                   |
|   35 | Brandtr D'Elias        | Bato                           | Philippines              |
|  248 | Brandon Mewburn        | Sergelen                       | Mongolia                 |
|  744 | Brandie Von Helmholtz  | Sabtang                        | Philippines              |
|  383 | Brande Crossdale       | San Fernando                   | Philippines              |
|  263 | Bradly Fidler          | Banepa                         | Nepal                    |
|   84 | Bradford Folbige       | Levallois-Perret               | France                   |
|  566 | Boycey Cardillo        | Jichang                        | China                    |
|  111 | Bogart Lickorish       | Xingcheng                      | China                    |
|  307 | Bobby Fillary          | Sidomulyo Kulon                | Indonesia                |
|  100 | Bobbe Wayon            | Bocana de Paiwas               | Nicaragua                |
|  657 | Blayne Cheshir         | Kuteynykove                    | Ukraine                  |
|  941 | Blanca Jee             | Lagny-sur-Marne                | France                   |
|  515 | Blanca Billsberry      | Pola                           | Philippines              |
|  957 | Bird Kitlee            | Turku                          | Finland                  |
|  254 | Bing Francecione       | Sabang                         | Indonesia                |
|  434 | Bibby Tippler          | Krugersdorp                    | South Africa             |
|  534 | Betty Skillington      | Jianzhatan                     | China                    |
|  715 | Betti Vasilevich       | Chengyang                      | China                    |
|  773 | Bethina De Luna        | Blizne                         | Poland                   |
|  385 | Bethany Girone         | Santana                        | Portugal                 |
|  368 | Bethanne Pantlin       | Itabaianinha                   | Brazil                   |
|  318 | Bertie Scherme         | Al Matl─½n                     | Tunisia                  |
|  594 | Bernie Ledwidge        | Trompsburg                     | South Africa             |
|  153 | Bernelle Tootal        | Studen├í                       | Czech Republic           |
|  959 | Bernarr Pilling        | Ngembo                         | Indonesia                |
|  698 | Bernadene Kellie       | Ladner                         | Canada                   |
|  333 | Berkley Tetford        | ┼╜idlochovice                  | Czech Republic           |
|  189 | Benita Baszkiewicz     | Elektr─ùnai                    | Lithuania                |
|  319 | Benedikta Blasl        | Besko                          | Poland                   |
|  486 | Benedicta Schulz       | Ganhe                          | China                    |
|  981 | Becky Wiggett          | Andrushivka                    | Ukraine                  |
|  276 | Beckie Hinkes          | Chapultepec                    | Mexico                   |
|  789 | Beatriz Overlow        | Yangdu                         | China                    |
|  266 | Beatrice Dimitrescu    | El Colorado                    | Argentina                |
|  480 | Bax Lemary             | Tianxin                        | China                    |
|  305 | Baudoin Winckworth     | Port-de-Bouc                   | France                   |
|  353 | Batholomew Shillitto   | San Isidro                     | Philippines              |
|  114 | Bastian Fildes         | Krasnokamensk                  | Russia                   |
|  175 | Basilius Ansty         | Nzeto                          | Angola                   |
|  787 | Barbey Brotherheed     | Xingou                         | China                    |
|  656 | Aviva Clayfield        | Jinchang                       | China                    |
|  643 | Avictor Lune           | Pira├¡ do Sul                  | Brazil                   |
|  822 | Aveline Comford        | Pasirnangka                    | Indonesia                |
|  877 | Auroora Wands          | Uchkulan                       | Russia                   |
|  255 | Aurelea Ozelton        | Chenfangji                     | China                    |
|  792 | Augusta Priscott       | Stepnica                       | Poland                   |
|  108 | Audry Tinmouth         | Putrajaya                      | Malaysia                 |
|  335 | Audrey Sieve           | Fanzhuang                      | China                    |
|  348 | Audre Lingner          | Kendung Timur                  | Indonesia                |
|  583 | Aubrey Hymers          | Nepalgunj                      | Nepal                    |
|   70 | Ashley Turfin          | QanlikoΓÇÖl                    | Uzbekistan               |
|  150 | Ashia Verni            | Temirgoyevskaya                | Russia                   |
|  778 | Arv Kornalik           | Karasuk                        | Russia                   |
|  711 | Artair Howell          | Youghal                        | Ireland                  |
|  404 | Arney Camsey           | Hamakita                       | Japan                    |
|  224 | Arlinda Surgison       | Tayirove                       | Ukraine                  |
|  311 | Arlen Spadari          | Uglyanets                      | Russia                   |
|  401 | Arel Callis            | Ziketan                        | China                    |
|  225 | Ardyth Johl            | Kthella e Ep├½rme              | Albania                  |
|  209 | Ardelis Beardshaw      | Goundi                         | Chad                     |
|  322 | Arabelle Dallicott     | Savalou                        | Benin                    |
|  513 | Antonie Farn           | Nakatsugawa                    | Japan                    |
|  943 | Antoni Folbige         | Sobh─üdero                     | Pakistan                 |
|  308 | Ansell Bracer          | Trieste                        | Italy                    |
|  973 | Ania Renfree           | Tomislavgrad                   | Bosnia and Herzegovina   |
|  702 | Angil Heugh            | Vista Alegre                   | Portugal                 |
|  811 | Angelle Cordeau        | Jingxi                         | China                    |
|  614 | Andy Hizir             | Verblyany                      | Ukraine                  |
|  521 | Andriette Danielczyk   | Dait┼ìch┼ì                     | Japan                    |
|  554 | Andrey Gentil          | Arrentela                      | Portugal                 |
|  214 | Andrey Brosel          | Zunilito                       | Guatemala                |
|  301 | Anatola Skillman       | Petr├│polis                    | Brazil                   |
|  883 | Ambrosius Varndell     | St├¡rion                       | Greece                   |
|  533 | Ambrosi Campagne       | Ruilin                         | China                    |
|   85 | Amata Devin            | Guimbal                        | Philippines              |
|  342 | Amalita Vasyunin       | Sigav├⌐                        | Wallis and Futuna        |
|  127 | Amabelle Bradie        | Qingtang                       | China                    |
|  610 | Amabel Saiens          | Guhuai                         | China                    |
|  206 | Alwyn Hallbord         | Bitam                          | Gabon                    |
|  770 | Alric Chate            | Cigintung                      | Indonesia                |
|  903 | Alonso Ianitti         | Lainqu                         | China                    |
|  984 | Allyson Fulle          | Nanhe                          | China                    |
|    9 | Allys Cubbon           | Ba┼ét├│w                       | Poland                   |
|  113 | Allx Plowman           | Upper San Mateo                | Philippines              |
|  933 | Allison Wickes         | Pulaupanggung                  | Indonesia                |
|  395 | Allis Petras           | Lille                          | France                   |
|  784 | Allin Bernardotti      | Jiantianjie                    | China                    |
|  351 | Alleen Meininger       | Kangalassy                     | Russia                   |
|  671 | Alla Parsonson         | Bissau                         | Guinea-Bissau            |
|  270 | Alicea Dener           | Guanagazapa                    | Guatemala                |
|  879 | Alice Albisser         | Zhashkiv                       | Ukraine                  |
|  428 | Alfonso Hamly          | Calubcub Dos                   | Philippines              |
|  631 | Alexandr Gomersall     | Maochen                        | China                    |
|   62 | Alessandra McEntegart  | Benguela                       | Angola                   |
|  488 | Aleksandr Vaun         | Priargunsk                     | Russia                   |
|  963 | Alejandra Ferrandez    | V├ñnn├ñs                       | Sweden                   |
|  654 | Alec Vivyan            | TΓÇÖianetΓÇÖi                  | Georgia                  |
|  466 | Albertina Swains       | Bajingzi                       | China                    |
|  331 | Alana De Vaan          | Skal├ínion                     | Greece                   |
|  372 | Ajay Birrell           | Shiziling                      | China                    |
|  613 | Aila Wornum            | Vanga┼╛i                       | Latvia                   |
|  122 | Ahmed Beardmore        | Prado                          | Colombia                 |
|  309 | Aguste Scotney         | Quß╗│nh C├┤i                   | Vietnam                  |
|  788 | Agna Mepham            | Baliuag Nuevo                  | Philippines              |
|  186 | Adrian Rowntree        | T┼Öeb├¡─ì                      | Czech Republic           |
|   99 | Adorne Wrangle         | Huaqiu                         | China                    |
|  987 | Adolpho Colson         | Legen                          | Slovenia                 |
|  413 | Adham Farherty         | Ballsh                         | Albania                  |
|  451 | Adamo Broggetti        | Nankou                         | China                    |
|  991 | Abraham Field          | Vale de Vila                   | Portugal                 |
|  762 | Abdul Nanson           | B├Ñstad                        | Sweden                   |
|  673 | Abagail Prewett        | Dangbigih                      | Indonesia                |
|  458 | Abagail Foden          | Sabang                         | Philippines              |
|  326 | Abagael Petherick      | Malaga                         | Spain                    |
+------+------------------------+--------------------------------+--------------------------+
1000 rows in set (0.067 sec)

MariaDB [latihan_mysql]> SELECT *
    -> FROM customers
    -> ORDER BY name
    -> LIMIT 10;
+-----+-------------------+--------------+----------------+
| id  | name              | city         | country        |
+-----+-------------------+--------------+----------------+
| 326 | Abagael Petherick | Malaga       | Spain          |
| 458 | Abagail Foden     | Sabang       | Philippines    |
| 673 | Abagail Prewett   | Dangbigih    | Indonesia      |
| 762 | Abdul Nanson      | B├Ñstad      | Sweden         |
| 991 | Abraham Field     | Vale de Vila | Portugal       |
| 451 | Adamo Broggetti   | Nankou       | China          |
| 413 | Adham Farherty    | Ballsh       | Albania        |
| 987 | Adolpho Colson    | Legen        | Slovenia       |
|  99 | Adorne Wrangle    | Huaqiu       | China          |
| 186 | Adrian Rowntree   | T┼Öeb├¡─ì    | Czech Republic |
+-----+-------------------+--------------+----------------+
10 rows in set (0.001 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> ORDER BY name ASC
    -> LIMIT 10;
+-----+-------------------+--------------+----------------+
| id  | name              | city         | country        |
+-----+-------------------+--------------+----------------+
| 326 | Abagael Petherick | Malaga       | Spain          |
| 458 | Abagail Foden     | Sabang       | Philippines    |
| 673 | Abagail Prewett   | Dangbigih    | Indonesia      |
| 762 | Abdul Nanson      | B├Ñstad      | Sweden         |
| 991 | Abraham Field     | Vale de Vila | Portugal       |
| 451 | Adamo Broggetti   | Nankou       | China          |
| 413 | Adham Farherty    | Ballsh       | Albania        |
| 987 | Adolpho Colson    | Legen        | Slovenia       |
|  99 | Adorne Wrangle    | Huaqiu       | China          |
| 186 | Adrian Rowntree   | T┼Öeb├¡─ì    | Czech Republic |
+-----+-------------------+--------------+----------------+
10 rows in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> ORDER BY country ASC
    -> LIMIT 10;
+-----+------------------+-------------------+----------------+
| id  | name             | city              | country        |
+-----+------------------+-------------------+----------------+
| 207 | Bud Eynald       | Gereshk           | Afghanistan    |
| 598 | Derrick Danbrook | Pul-e Sang─½      | Afghanistan    |
| 238 | Darwin Woodgate  | B─ümy─ün          | Afghanistan    |
|  50 | Matteo Calam     | ΓÇÖUn─übah        | Afghanistan    |
| 208 | Carin Edwardes   | ─Çsm─ür           | Afghanistan    |
| 925 | Reese Symons     | Br├ñnd├╢          | Aland Islands  |
| 565 | Joell Laroux     | Orikum            | Albania        |
| 413 | Adham Farherty   | Ballsh            | Albania        |
| 225 | Ardyth Johl      | Kthella e Ep├½rme | Albania        |
| 836 | Kellen Giorgetti | Vaitogi           | American Samoa |
+-----+------------------+-------------------+----------------+
10 rows in set (0.002 sec)

MariaDB [latihan_mysql]> SELECT * FROM customers
    -> ORDER BY country ASC, name DESC
    -> LIMIT 10;
+-----+------------------+-------------------+----------------+
| id  | name             | city              | country        |
+-----+------------------+-------------------+----------------+
|  50 | Matteo Calam     | ΓÇÖUn─übah        | Afghanistan    |
| 598 | Derrick Danbrook | Pul-e Sang─½      | Afghanistan    |
| 238 | Darwin Woodgate  | B─ümy─ün          | Afghanistan    |
| 208 | Carin Edwardes   | ─Çsm─ür           | Afghanistan    |
| 207 | Bud Eynald       | Gereshk           | Afghanistan    |
| 925 | Reese Symons     | Br├ñnd├╢          | Aland Islands  |
| 565 | Joell Laroux     | Orikum            | Albania        |
| 225 | Ardyth Johl      | Kthella e Ep├½rme | Albania        |
| 413 | Adham Farherty   | Ballsh            | Albania        |
| 836 | Kellen Giorgetti | Vaitogi           | American Samoa |
+-----+------------------+-------------------+----------------+
10 rows in set (0.001 sec)

MariaDB [latihan_mysql]>