INSERT INTO Estado
VALUES(100, 'Acre', 'AC');

INSERT INTO Estado
VALUES(101, 'Alagoas', 'AL');

INSERT INTO Estado
VALUES(102, 'Amapá', 'AP');

INSERT INTO Estado
VALUES(103, 'Amazonas', 'AM');

INSERT INTO Estado
VALUES(104, 'Bahia', 'BA');

INSERT INTO Estado
VALUES(105, 'Ceará', 'CE');

INSERT INTO Estado
VALUES(106, 'Espírito Santo', 'ES');

INSERT INTO Estado
VALUES(107, 'Goiás', 'GO');

INSERT INTO Estado
VALUES(108, 'Maranhão', 'MA');

INSERT INTO Estado
VALUES(109, 'Mato Grosso', 'MT');





INSERT INTO Cidade
VALUES(200, 'Rio Branco', 100);

INSERT INTO Cidade
VALUES(201, 'Maceió', 101);

INSERT INTO Cidade
VALUES(202, 'Macapá', 102);

INSERT INTO Cidade
VALUES(203, 'Manaus', 103);

INSERT INTO Cidade
VALUES(204, 'Salvador', 104);

INSERT INTO Cidade
VALUES(205, 'Fortaleza', 105);

INSERT INTO Cidade
VALUES(206, 'Espírito Santo', 106);

INSERT INTO Cidade
VALUES(207, 'Goiana', 107);

INSERT INTO Cidade
VALUES(208, 'Maranhão', 108);

INSERT INTO Cidade
VALUES(209, 'Mato Grosso', 109);



INSERT INTO Bairro
VALUES(300, 'Ceilândia', 200);

INSERT INTO Bairro
VALUES(301, 'Samambaia', 201);

INSERT INTO Bairro
VALUES(302, 'Plano Piloto', 202);

INSERT INTO Bairro
VALUES(303, 'Taguatinga', 203);

INSERT INTO Bairro
VALUES(304, 'Planaltina', 204);

INSERT INTO Bairro
VALUES(305, 'Guará', 205);

INSERT INTO Bairro
VALUES(306, 'Gama', 206);

INSERT INTO Bairro
VALUES(307, 'Santa Maria', 207);

INSERT INTO Bairro
VALUES(308, 'Águas Claras', 208);

INSERT INTO Bairro
VALUES(309, 'São Sebastião', 209);







INSERT INTO Logradouro
VALUES(400, 'Rua', 'Agostinho da Mota', 300);

INSERT INTO Logradouro
VALUES(401, 'Rua', 'Ana de Proença', 301);

INSERT INTO Logradouro
VALUES(402, 'Rua', 'Antônia Soveral', 302);

INSERT INTO Logradouro
VALUES(403, 'Rua', 'Areião', 303);

INSERT INTO Logradouro
VALUES(404, 'Rua', 'Atucuri', 304);

INSERT INTO Logradouro
VALUES(405, 'Rua', 'Aturari', 305);

INSERT INTO Logradouro
VALUES(406, 'Rua', 'Bacarira', 306);

INSERT INTO Logradouro
VALUES(407, 'Rua', 'Barra do Ariranha', 307);

INSERT INTO Logradouro
VALUES(408, 'Rua', 'Bendiapá', 308);

INSERT INTO Logradouro
VALUES(409, 'Rua', 'Boa Esperança', 309);



INSERT INTO Endereco
VALUES(500, 174, 'Igreja', 400);

INSERT INTO Endereco
VALUES(501, 922, 'Perto do escritório', 401);

INSERT INTO Endereco
VALUES(502, 27, Null, 402);

INSERT INTO Endereco
VALUES(503, 53, Null, 403);

INSERT INTO Endereco
VALUES(504, 444, Null, 404);

INSERT INTO Endereco
VALUES(505, 77, 'Perto da escola', 405);

INSERT INTO Endereco
VALUES(506, 255, 'Do lado da avenida', 406);

INSERT INTO Endereco
VALUES(507, 100, 'Perto do dentista', 407);

INSERT INTO Endereco
VALUES(508, 39, 'Do lado do correios', 408);

INSERT INTO Endereco
VALUES(509, 45, Null, 409);



INSERT INTO Tip_Tel
VALUES(600, 'Residencial');

INSERT INTO Tip_Tel
VALUES(601, 'Comercial');

INSERT INTO Tip_Tel
VALUES(602, 'Celular');




INSERT INTO Sta_Pro
VALUES(800, 'Inativo');

INSERT INTO Sta_Pro
VALUES(801, 'Ativo');


INSERT INTO Sta_Cli_Pro
VALUES(803, 'Inativo');

INSERT INTO Sta_Cli_Pro
VALUES(804, 'Ativo');

INSERT INTO Sta_Cli_Pro
VALUES(805, 'Bloqueado');



INSERT INTO Sta_Cli
VALUES(806, 'Inativo');

INSERT INTO Sta_Cli
VALUES(807, 'Ativo');





INSERT INTO Profissao
VALUES(900, 'Engenheiro de dados');

INSERT INTO Profissao
VALUES(901, 'Padeiro');

INSERT INTO Profissao
VALUES(902, 'Arquiteto');

INSERT INTO Profissao
VALUES(903, 'Cozinheiro');

INSERT INTO Profissao
VALUES(904, 'Professor');

INSERT INTO Profissao
VALUES(905, 'Aposentado');

INSERT INTO Profissao
VALUES(906, 'Empresário');

INSERT INTO Profissao
VALUES(907, 'Advogado');

INSERT INTO Profissao
VALUES(908, 'Médico');

INSERT INTO Profissao
VALUES(909, 'Atleta');




INSERT INTO Tip_Cli
VALUES(1000, 'Jurídica');

INSERT INTO Tip_Cli
VALUES(1001, 'Física');




INSERT INTO Civil
VALUES(1002, 'Solteiro(a)');

INSERT INTO Civil
VALUES(1003, 'Casado(a)');

INSERT INTO Civil
VALUES(1004, 'Divorciado(a)');

INSERT INTO Civil
VALUES(1005, 'Viúvo(a)');

INSERT INTO Civil
VALUES(1006, 'Separado');





INSERT INTO Produto
VALUES(1008, 'Conta Poupança', 800);

INSERT INTO Produto
VALUES(1009, 'Conta Corrente', 801);

INSERT INTO Produto
VALUES(1010, 'Conta Salário', 801);

INSERT INTO Produto
VALUES(1011, 'Conta Digital', 801);

INSERT INTO Produto
VALUES(1012, 'Conta Universitária', 801);

INSERT INTO Produto
VALUES(1013, 'Empréstimo', 801);

INSERT INTO Produto
VALUES(1014, 'Cartão', 801);

INSERT INTO Produto
VALUES(1015, 'Seguro', 801);

INSERT INTO Produto
VALUES(1016, 'Câmbio', 801);

INSERT INTO Produto
VALUES(1017, 'Investimento', 801);





INSERT INTO Cliente
VALUES(2000, TO_DATE('02/04/1978', 'mm/dd/yyyy'), 13872977616, 'João da Silva', 'M', TO_DATE('03/08/2012', 'mm/dd/yyyy'), 1001, 900, 807, 500, 1002);

INSERT INTO Cliente
VALUES(2001, TO_DATE('03/21/2003', 'mm/dd/yyyy'), 49248110050, 'Charissa Sosa', 'F', TO_DATE('07/20/2021', 'mm/dd/yyyy'), 1001, 903, 807, 501, 1002);

INSERT INTO Cliente
VALUES(2002, TO_DATE('02/17/1997', 'mm/dd/yyyy'), 36181742431, 'Jamal Simmons', 'M', TO_DATE('09/03/2017', 'mm/dd/yyyy'), 1001, 904, 807, 502, 1002);

INSERT INTO Cliente
VALUES(2003, TO_DATE('06/30/1971', 'mm/dd/yyyy'), 61589540777, 'Oleg Shields', 'M', TO_DATE('03/11/1991', 'mm/dd/yyyy'), 1001, 902, 806, 503, 1003);

INSERT INTO Cliente
VALUES(2004, TO_DATE('08/03/1975', 'mm/dd/yyyy'), 47870867622, 'Armand Grimes', 'M', TO_DATE('08/24/2013', 'mm/dd/yyyy'), 1001, 909, 807, 504, 1002);

INSERT INTO Cliente
VALUES(2005, TO_DATE('12/12/1965', 'mm/dd/yyyy'), 11947948788, 'Hadley Nash', 'M', TO_DATE('08/18/2013', 'mm/dd/yyyy'), 1000, 901, 807, 505, 1004);

INSERT INTO Cliente
VALUES(2006, TO_DATE('01/25/2001', 'mm/dd/yyyy'), 10913865390, 'Miranda Williamson', 'F', TO_DATE('07/14/2020', 'mm/dd/yyyy'), 1001, 905, 806, 506, 1005);

INSERT INTO Cliente
VALUES(2007, TO_DATE('05/27/1968', 'mm/dd/yyyy'), 46812703995, 'Wesley Medina', 'M', TO_DATE('01/20/2000', 'mm/dd/yyyy'), 1001, 907, 807, 507, 1003);

INSERT INTO Cliente
VALUES(2008, TO_DATE('06/16/1995', 'mm/dd/yyyy'), 74751677970, 'Illiana Boyle', 'F', TO_DATE('02/21/2017', 'mm/dd/yyyy'), 1001, 906, 807, 508, 1002);

INSERT INTO Cliente
VALUES(2009, TO_DATE('06/24/1983', 'mm/dd/yyyy'), 54164080719, 'Hugo Calderano', 'M', TO_DATE('10/10/2010', 'mm/dd/yyyy'), 1001, 908, 807, 509, 1002);




INSERT INTO Cli_Pro
VALUES(2000, 1008, 98228061773, 84900389937, 804);

INSERT INTO Cli_Pro
VALUES(2001, 1009, 29113971570, 19507541086, 804);

INSERT INTO Cli_Pro
VALUES(2002, 1010, 91041777710, 27036136324, 803);

INSERT INTO Cli_Pro
VALUES(2003, 1011, 43137249963, 38652810245, 805);

INSERT INTO Cli_Pro
VALUES(2004, 1012, 74654541652, 51238084708, 804);

INSERT INTO Cli_Pro
VALUES(2005, 1013, 11311828918, 60046760266, 804);

INSERT INTO Cli_Pro
VALUES(2006, 1014, 39385998320, 49404655712, 803);

INSERT INTO Cli_Pro
VALUES(2007, 1015, 11469585840, 62262783065, 804);

INSERT INTO Cli_Pro
VALUES(2008, 1016, 34316017214, 13046005476, 804);

INSERT INTO Cli_Pro
VALUES(2009, 1017, 84661634214, 26947800026, 803);

INSERT INTO Cli_Pro
VALUES(2009, 1016, 81922446087, 55394895273, 805);

INSERT INTO Cli_Pro
VALUES(2004, 1014, 67545449997, 33394059878, 805);

INSERT INTO Cli_Pro
VALUES(2002, 1012, 93840665342, 94837465025, 803);

INSERT INTO Cli_Pro
VALUES(2003, 1015, 17483928374, 10293876766, 804);

INSERT INTO Cli_Pro
VALUES(2007, 1016, 20394872746, 98277098326, 805);

INSERT INTO Cli_Pro
VALUES(2006, 1012, 49283746556, 82932098736, 803);

INSERT INTO Cli_Pro
VALUES(2004, 1008, 84661634214, 92835112341, 805);

INSERT INTO Cli_Pro
VALUES(2004, 1016, 32874631908, 99884454343, 803);

INSERT INTO Cli_Pro
VALUES(2004, 1013, 43812908908, 77849823123, 803);

INSERT INTO Cli_Pro
VALUES(2006, 1009, 23097677812, 18756219385, 804);




INSERT INTO Telefone
VALUES(700, 'Estrangeiro', 2334384045666, 2000, 601);

INSERT INTO Telefone
VALUES(701, 'Nacional', 5511221989002, 2001, 602);

INSERT INTO Telefone
VALUES(702, 'Nacional', 5511281872262, 2002, 602);

INSERT INTO Telefone
VALUES(703, 'Nacional', 5511185056010, 2003, 602);

INSERT INTO Telefone
VALUES(704, 'Nacional', 5511458651185, 2004, 602);

INSERT INTO Telefone
VALUES(705, 'Nacional', 5511433827776, 2005, 601);

INSERT INTO Telefone
VALUES(706, 'Estrangeiro', 5511706002638, 2006, 602);

INSERT INTO Telefone
VALUES(707, 'Nacional', 2510401206072, 2007, 601);

INSERT INTO Telefone
VALUES(708, 'Nacional', 5511973340473, 2008, 602);

INSERT INTO Telefone
VALUES(709, 'Nacional', 5511112886013, 2009, 602);

INSERT INTO Telefone
VALUES(710, 'Nacional', 5511112771360, 2009, 602);