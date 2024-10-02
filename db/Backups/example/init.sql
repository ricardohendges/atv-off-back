CREATE TABLE dupla (
    dup_id int primary key not null,
    dup_nome varchar(50) not null,
    dup_usuario varchar(20) not null,
    dup_password varchar(10) not null,
    dup_first_access BOOLEAN default '1' not null
);

CREATE TABLE atividade (
    atv_id int primary key not null,
    atv_code varchar(1) not null,
    atv_dificuldade integer not null,
    atv_quantidade integer not null,
    atv_titulo varchar(30) not null,
    atv_descricao text not null,
    atv_entrada text not null,
    atv_saida text not null
);

CREATE TABLE exemplo (
    exe_id SERIAL primary key not null,
    atv_id int not null,
    exe_entrada text not null,
    exe_saida text not null
);

CREATE TABLE submissoes (
    sub_id SERIAL primary key not null,
    dup_id int not null,
    atv_id int not null,
    sub_codigo text not null,
    sub_status varchar(20) not null,
    sub_data timestamp not null
);

insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (1, 'ARTHUR VINÍCIUS TOCHETTO CARMINATTI', 'arthur.carminatti', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (2, 'ARTUR BRESOLIN', 'artur.bresolin', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (3, 'BRUNO ELIAN AREND', 'bruno.arend', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (4, 'BRUNO FELIPE BARETA', 'bruno.bareta', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (5, 'BRUNO VIZENTINI BALEN', 'bruno.balen', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (6, 'CARLOS ANDRÉ SCHLEICHER WEBER', 'carlos.weber', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (7, 'EDUARDO AFFONSO SCHÜTZ FIGUEIRÓ', 'eduardo.figueiro', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (8, 'FELIPE POCEBON DAMO', 'felipe.damo', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (9, 'GABRIEL SILVEIRA BOTEZINI', 'gabriel.botezini', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (10, 'GUSTAVO HÜBNER', 'gustavo.hubner', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (11, 'IGOR HAAS', 'igor.haas', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (12, 'ISAI GABRIEL MEDINA PEREIRA', 'isai.pereira', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (13, 'KHAUAN GABRIEL VEIT LIBERALI', 'khauan.liberali', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (14, 'LUIZ CARLOS ORLANDI JUNIOR', 'luiz.junior', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (15, 'MATHEUS HENRIQUE FIORINI', 'matheus.fiorini', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (16, 'NAYARA BACKES FLOSS', 'nayara.floss', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (17, 'TAINARA PAULA SIMON', 'tainara.simon', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (18, 'VINÍCIUS GONÇALVES', 'vinicius.goncalves', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (99, 'BIG BOSS', 'admin', '123456');


insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (1, 'A', 1, 
                       -- atv_titulo
                       'Produto Simples', 
                       -- atv_descricao
                       'Leia dois valores inteiros. A seguir, calcule o produto entre estes dois valores e atribua esta operação à variável PROD. A seguir mostre a variável PROD com mensagem correspondente.',
                       -- atv_entrada
                       'O arquivo de entrada contém 2 valores inteiros.', 
                       -- atv_saida
                       'Imprima a mensagem "PROD" e a variável PROD conforme exemplo abaixo, com um espaço em branco antes e depois da igualdade. Não esqueça de imprimir o fim de linha após o produto, caso contrário seu programa apresentará a mensagem: “Presentation Error”.');

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (2, 'B', 1, 
                       -- atv_titulo
                       'Cálculo Simples', 
                       -- atv_descricao
                       'Neste problema, deve-se ler o código de uma peça 1, o número de peças 1, o valor unitário de cada peça 1, o código de uma peça 2, o número de peças 2 e o valor unitário de cada peça 2. Após, calcule e mostre o valor a ser pago.',
                       -- atv_entrada
                       'O arquivo de entrada contém duas linhas de dados. Em cada linha haverá 3 valores, respectivamente dois inteiros e um valor com 2 casas decimais.', 
                       -- atv_saida
                       'A saída deverá ser uma mensagem conforme o exemplo fornecido abaixo, lembrando de deixar um espaço após os dois pontos e um espaço após o "R$". O valor deverá ser apresentado com 2 casas após o ponto.'
);
-- ***********************************************************
-- ***********************************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (3, 'C', 2, 
                       -- atv_titulo
                       'Diferença', 
                       -- atv_descricao
                       'Leia quatro valores inteiros A, B, C e D. A seguir, calcule e mostre a diferença do produto de A e B pelo produto de C e D segundo a fórmula: DIFERENCA = (A * B - C * D).',
                       -- atv_entrada
                       'O arquivo de entrada contém 4 valores inteiros.', 
                       -- atv_saida
                       'Imprima a mensagem DIFERENCA com todas as letras maiúsculas, conforme exemplo abaixo, com um espaço em branco antes e depois da igualdade.'
);-- ***********************************************************
-- ***********************************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (4, 'D', 3, 
                       -- atv_titulo
                       'Consumo', 
                       -- atv_descricao
                       'Calcule o consumo médio de um automóvel sendo fornecidos a distância total percorrida (em Km) e o total de combustível gasto (em litros).',
                       -- atv_entrada
                       'O arquivo de entrada contém dois valores: um valor inteiro X representando a distância total percorrida (em Km), e um valor real Y representando o total de combustível gasto, com um dígito após o ponto decimal.', 
                       -- atv_saida
                       'Apresente o valor que representa o consumo médio do automóvel com 3 casas após a vírgula, seguido da mensagem "km/l".'
);-- ***********************************************************
-- ***********************************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (5, 'E', 5, 
                       -- atv_titulo
                       'Gasto de Combustível', 
                       -- atv_descricao
                       'Joaozinho quer calcular e mostrar a quantidade de litros de combustível gastos em uma viagem, ao utilizar um automóvel que faz 12 KM/L. Para isso, ele gostaria que você o auxiliasse através de um simples programa. Para efetuar o cálculo, deve-se fornecer o tempo gasto na viagem (em horas) e a velocidade média durante a mesma (em km/h). Assim, pode-se obter distância percorrida e, em seguida, calcular quantos litros seriam necessários. Mostre o valor com 3 casas decimais após o ponto.',
                       -- atv_entrada
                       'O arquivo de entrada contém dois inteiros. O primeiro é o tempo gasto na viagem (em horas) e o segundo é a velocidade média durante a mesma (em km/h).', 
                       -- atv_saida
                       'Imprima a quantidade de litros necessária para realizar a viagem, com três dígitos após o ponto decimal'
);


-- atividade 1 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '3
9', 'PROD = 27');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '-30
10', 'PROD = -300');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '0
9', 'PROD = 0');
-- atividade 2 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, '12 1 5.30
16 2 5.10', 'VALOR A PAGAR: R$ 15.50');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, '13 2 15.30
161 4 5.20', 'VALOR A PAGAR: R$ 51.40');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, '1 1 15.10
2 1 15.10', 'VALOR A PAGAR: R$ 30.20');
-- atividade 3 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '5
6
7
8', 'DIFERENCA = -26');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '0
0
7
8', 'DIFERENCA = -56');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '
5
6
-7
8', 'DIFERENCA = 86');
-- atividade 4 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (4, '500
35.0', '14.286 km/l');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (4, '2254
124.4', '18.119 km/l');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (4, '4554
464.6', '9.802 km/l');
-- atividade 5 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '10
85', '70.833');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '2
92', '15.333');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '22
67', '122.833');
