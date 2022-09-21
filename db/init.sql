CREATE TABLE dupla (
    id int primary key not null,
    nome varchar(50) not null,
    usuario varchar(10) not null,
    password varchar(10) not null
);

CREATE TABLE atividade (
    id int primary key not null,
    code varchar(1) not null,
    dificuldade integer not null,
    quantidade integer not null,
    titulo varchar(30) not null,
    descricao text not null,
    entrada text not null,
    saida text not null
);

CREATE TABLE exemplo (
    id int primary key not null,
    atv_id int not null,
    entrada text not null,
    saida text not null
);

CREATE TABLE submissoes (
    id int primary key not null,
    dup_id int not null,
    atv_id int not null,
    codigo text not null,
    status varchar(20) not null
);

insert into dupla (id, nome, usuario, password)
           values (1, 'DJONATAN WILLENZ && IAN SCHMIDT', 'DJOEIAN', '123456');
insert into dupla (id, nome, usuario, password)
           values (2, 'FABIO WRZESINSKI && JOÃO MALLMANN', 'FABEJOA', '123456');
insert into dupla (id, nome, usuario, password)
           values (3, 'GABRIEL KUNZ && LUIZ JUNIOR', 'GABELUI', '123456');
insert into dupla (id, nome, usuario, password)
           values (4, 'GUILHERME ZAHN && ALEXANDRE JUNGES', 'GUIEALE', '123456');
insert into dupla (id, nome, usuario, password)
           values (5, 'IURI PAGNUSSAT && JOÃO SANTOS', 'IUREJOA', '123456');
insert into dupla (id, nome, usuario, password)
           values (6, 'MAGLAN BIEGER && KAUAN HEISLER', 'MAGEKAU', '123456');
insert into dupla (id, nome, usuario, password)
           values (7, 'ODAIR SEHN && MATHEUS TOGNI', 'ODAEMAT', '123456');
insert into dupla (id, nome, usuario, password)
           values (8, 'ADILSON JUNIOR && GABRIEL DA LUZ', 'ADIEGAB', '123456');
insert into dupla (id, nome, usuario, password)
           values (9, 'CLAUDINEI MAYOLO && EDIVAN MAYOLO', 'CLAEEDI', '123456');
insert into dupla (id, nome, usuario, password)
           values (10, 'CRISTYAN SCHABARUM && JULIAN WEBER', 'CRIEJUL', '123456');
insert into dupla (id, nome, usuario, password)
           values (11, 'RAFAEL HENDGES && CRISTIAN ENGEL', 'RAFECRI', '123456');
insert into dupla (id, nome, usuario, password)
           values (12, 'ALISSON DE SOUZA && HERICK BALENSIEFER', 'ALIEHER', '123456');
insert into dupla (id, nome, usuario, password)
           values (13, 'CARLOS SILVA && CRISTIAN MÜLLER', 'CARECRI', '123456');
insert into dupla (id, nome, usuario, password)
           values (14, 'CRISTIAN FELDKIRCHER && DOUGLAS CUCHI', 'CRIEDOU', '123456');
insert into dupla (id, nome, usuario, password)
           values (15, 'GUSTAVO WIEBBELING && RENAN SCHABARUM', 'GusuarioEN', '123456');
insert into dupla (id, nome, usuario, password)
           values (16, 'LEANDRO CANELLO && THIAGO VANAZZI', 'LEAETHI', '123456');
insert into dupla (id, nome, usuario, password)
           values (17, 'MAICON PEREIRA && WILLIAN BADIA', 'MAIEWIL', '123456');
insert into dupla (id, nome, usuario, password)
           values (18, 'MAICON KAPPAUN && PAULO RÜDIGER', 'MAIEPAU', '123456');
insert into dupla (id, nome, usuario, password)
           values (19, 'KARIN SERAFINI && DANIMAR ALBANI', 'KAREDAN', '123456');

insert into atividade (id, code, dificuldade, quantidade, titulo, descricao, entrada, saida)
               values (1, 'A', 1, 11253, 'X do Guedes', 'Em 2012 foi alcançado um novo recorde mundial na famosa Competição de Cachorros-Quentes do Nathan: o campeão, Joey Chestnut, devorou 68 cachorros-quentes em dez minutos, um aumento incrível em relação aos 62 sanduíches devorados pelo mesmo Chestnut em 2011.
O restaurante Nathan’s Famous Corporation, localizado no Brooklyn, NY, é o responsável pela competição. Eles produzem deliciosos cachorros-quentes, mundialmente famosos, mas quando o assunto é matemática eles não são tão bons. Eles desejam ser listados no Livro de Recordes do Guinness, mas para isso devem preencher um formulário descrevendo os fatos básicos da competição. Em particular, eles devem informar o número médio de cachorros-quentes consumidos pelos participantes durante a competição.
Você pode ajudá-los? Eles prometeram pagá-lo com um dos seus saborosos cachorros-quentes. Dados o número total de cachorros-quentes consumidos e o número total de participantes na competição, você deve escrever um programa para determinar o número médio de cachorros-quentes consumidos pelos participantes.
', 'A entrada consiste de uma única linha que contém dois inteiros H e P (1 ≤ H, P ≤ 1000) indicando respectivamente o número total de cachorros-quentes consumidos e o número total de participantes na competição.',
'Seu programa deve produzir uma única linha com um número racional representando o número médio de cachorros-quentes consumidos pelos participantes. O resultado deve ser escrito como um número racional com exatamente dois dígitos após o ponto decimal, arredondado se necessário.');

insert into atividade (id, code, dificuldade, quantidade, titulo, descricao, entrada, saida)
               values (2, 'B', 1, 2717, 'Fatorando', 'O fatorial de um número inteiro positivo N, denotado por N!, é definido como o produto dos inteiros positivos menores do que ou iguais a N. Por exemplo 4! = 4 × 3 × 2 × 1 = 24.
Dado um inteiro positivo N, você deve escrever um programa para determinar o menor número k tal que N = a1! + a2! + ... + ak!, onde cada ai, para 1 ≤ i ≤ k, é um número inteiro positivo.
Por exemplo, para N = 10 a resposta é 3, pois é possível escrever N como a soma de três números fatoriais: 10 = 3! + 2! + 2!. Para N = 25 a resposta é 2, pois é possível escrever N como a soma de dois números fatoriais: 25 = 4! + 1!.
', 'A entrada consiste de uma única linha que contém um inteiro N (1 ≤ N ≤ 105).', 'Seu programa deve produzir uma única linha com um inteiro representando a menor quantidade de números fatoriais cuja soma é igual ao valor de N.');

