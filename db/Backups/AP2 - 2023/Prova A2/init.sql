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
    -- atv_quantidade integer not null,
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
           values (19, 'JOÃO VITOR MARTINS', 'joao.martins', '123456');
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
           values (99, 'BIG BOSS', 'admin', '246855');

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (1, 'A', 1, 
                       -- atv_titulo
                       'Webber Lanches', 
                       -- atv_descricao
                       'Em 2023, foi alcançado um novo recorde mundial na famosa Competição de Xis-Tudo da famosa empresa de fast food Webber Lanches. João devorou 68 Xis em 10 minutos, um aumento incrivel em relação aos 62 devorados pelo mesmo João em 2022.

A lanchonete Webber Lanches LTDA, localizada em Saudades SC, é responsável pela competição. Eles produzem deliciosos Xis mundialmente famosos, mas quando o assunto é matemática . . . eles não são tão bons . . . Eles desejam ser listados no Livro de Recordes Guinness, MAS, para isso, devem preencher um formulário descrevendo os fatos básicos da competição. Em particular, eles devem informar o número médio de Xis consumidos pelos participantes durante a competição.

Dados o número total de Xis consumidos e o número total de participantes na competição, você deve escrever um programa para determinar o número médio de Xis consumidos pelos participantes.',
                       -- atv_entrada
                       'A entrada consiste de uma única linha que contém dois inteiros H e P (1 ≤ H, P ≤ 1000) indicando respectivamente o número total de Xis consumidos e o número total de participantes na competição.', 
                       -- atv_saida
                       'Seu programa deve produzir uma única linha com um número racional representando o número médio de Xis consumidos pelos participantes. O resultado deve ser escrito como um número racional com exatamente dois dígitos após o ponto decimal, arredondado se necessário.');

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (2, 'B', 1, 
                       -- atv_titulo
                       'Descanço do Guerreiro', 
                       -- atv_descricao
                       'Felipe é programador em uma Software House, e tem os horários de trabalho muito variáveis. Para piorar, ela tem sono pesado, e uma grande dificuldade para acordar com relógios despertadores.

Recentemente ela ganhou de presente um relógio digital, com alarme com vários tons, e tem esperança que isso resolva o seu problema. No entanto, ela anda muito cansada e quer aproveitar cada momento de descanso. Por isso, carrega seu relógio digital despertador para todos os lugares, e sempre que tem um tempo de descanso procura dormir, programando o alarme despertador para a hora em que tem que acordar. No entanto, com tanta ansiedade para dormir, acaba tendo dificuldades para adormecer e aproveitar o descanso.

Um problema que a tem atormentado na hora de dormir é saber quantos minutos ela teria de sono se adormecesse imediatamente e acordasse somente quando o despertador tocasse. Mas ela realmente não é muito boa com números, e pediu sua ajuda para escrever um programa que, dada a hora corrente e a hora do alarme, determine o número de minutos que ela poderia dormir.',
                       -- atv_entrada
                       'A entrada contém vários casos de teste. Cada caso de teste é descrito em uma linha, contendo quatro números inteiros H1 , M1 , H2 e M2, com H1:M1 representando a hora e minuto atuais, e H2:M2 representando a hora e minuto para os quais o alarme  despertador foi programado (0≤H1≤23, 0≤M1≤59, 0≤H2≤23, 0≤M2 ≤59).

O final da entrada é indicado por uma linha que contém apenas quatro zeros, separados por espaços em branco.', 
                       -- atv_saida
                       'Para cada caso de teste da entrada seu programa deve imprimir uma linha, cada uma contendo um número inteiro, indicando o número de minutos que Felipe tem para dormir.'
);


-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (3, 'C', 1, 
                       -- atv_titulo
                       'Eu Quero Cafééééé é . . .', 
                       -- atv_descricao
                       'O novo prédio da Horus Faculdades possui 3 andares. Em determinadas épocas do ano, os alunos e funcionários da Horus bebem muito café. Por conta disso, a presidência da Horus decidiu presentear geral com uma nova máquina de expresso. Esta máquina deve ser instalada em um dos 3 andares, mas a instalação deve ser feita de forma que as pessoas não percam muito tempo subindo e descendo escadas.

Cada pessoa na Horus bebe 1 café expresso por dia. Ele precisa ir do andar onde trabalha ou estuda até o andar onde está a máquina e voltar para seu andar de origem. Todos levam 1 minuto para subir ou descer um andar. Como a Horus se importa muito com a eficiência, ela quer posicionar a máquina de forma a minimizar o tempo total gasto subindo e descendo escadas.

Sua tarefa é ajudar a diretoria a posicionar a máquina de forma a minimizar o tempo total gasto subindo e descendo escadas.',
                       -- atv_entrada
                       'A entrada consiste em 3 números, A1 , A2 , A3 (0 ≤ A1 , A2 , A3 ≤ 1000), um por linha, onde Ai representa o número de pessoas que trabalham no i-ésimo andar.', 
                       -- atv_saida
                       'Seu programa deve imprimir uma única linha, contendo o número total de minutos a serem gastos com o melhor posicionamento possível da máquina.'
);


-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (4, 'D', 1, 
                       -- atv_titulo
                       'Dooois ooou... UM!', 
                       -- atv_descricao
                       'Todos devem conhecer o jogo Dois ou Um, utilizado para determinar um ganhador entre três ou mais jogadores. 
Para quem não conhece, o jogo funciona da seguinte maneira. Cada jogador escolhe um valor entre Dois ou Um; a um comando (geralmente um dos competidores anuncia em voz alta “DOIS OU... UM!”), todos os participantes mostram o valor escolhido, utilizando uma das mãos: se o valor escolhido foi um, o competidor mostra o dedo indicador estendido; se o valor escolhido foi dois, mostra a mão com dois dedos estendidos. 

O ganhador é aquele que tiver escolhido um valor diferente de todos os outros; se não há um jogador com valor diferente de todos os outros (por exemplo todos os jogadores escolhem dois, ou um grupo de jogadores escolhe dois e outro grupo escolhe um), não há ganhador.  

Arthur, Bruno e Carlos e são grandes amigos e resolveram recriar o jogo na materia de TGS, utilizando da mesma mecanica, porém o nomeado em Zero ou Um. 
Para o projeto resolveram fazer um plugin no Facebook para jogar Zerinho como foi nomeado. 
Como não sabem programar, dividiram as tarefas entre amigos que sabem, inclusive você. Dados os três valores escolhidos por Arthur, Bruno e Carlos, cada valor zero ou um, escreva um programa que determina se há um ganhador, e nesse caso determina quem é o ganhador.',
                       -- atv_entrada
                       'A entrada é composta por vários casos de teste. Cada caso de teste consiste de uma única linha, que contém três inteiros A, B e C (A,B,C só podem ser 0 ou 1), indicando respectivamente os valores escolhidos por Arthur, Bruno e Carlos. O final da entrada é determinado por EOF (End of File).', 
                       -- atv_saida
                       'Para cada caso de teste, seu programa deve produzir uma única linha, contendo um único caractere. Se o vencedor é Arthur o caractere deve ser A, se o vencedor é Bruno o caractere deve ser B, se o vencedor é Carlos o caractere deve ser C e se não há vencedor o caractere deve ser * (asterisco).'
);


-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (5, 'E', 1, 
                       -- atv_titulo
                       'Viajando ... no tempo!', 
                       -- atv_descricao
                       'Imagine que você tenha uma máquina do tempo que pode ser usada no máximo três vezes, e a cada uso da máquina você pode escolher voltar para o passado ou ir para o futuro. A máquina possui três créditos fixos; cada crédito representa uma certa quantidade de anos, e pode ser usado para ir essa quantidade de anos para o passado ou para o futuro. Você pode fazer uma, duas ou três viagens, e cada um desses três créditos pode ser usado uma vez apenas. Por exemplo, se os créditos forem 5, 12 e 9, você poderia decidir fazer duas viagens: ir 5 anos para o futuro e, depois, voltar 9 anos para o passado. Dessa forma, você terminaria quatro anos no passado, em 2012. Também poderia fazer três viagens, todas indo para o futuro, usando os créditos em qualquer ordem, terminando em 2042.

Neste problema, dados os valores dos três créditos da máquina, seu programa deve dizer se é ou não possível viajar no tempo e voltar para o presente, fazendo pelo menos uma viagem e, no máximo, três viagens; sempre usando cada um dos três créditos no máximo uma vez.',
                       -- atv_entrada
                       'A entrada consiste de uma linha contendo os valores dos três créditos A, B e C (1 ≤ A, B, C ≤ 1000).', 
                       -- atv_saida
                       'Seu programa deve imprimir uma linha contendo o caracter “S” se é poss ível viajar e voltar para o presente, ou “N” caso contrário.'
);



-- insert into exemplo (atv_id, exe_entrada, exe_saida)
--            values (1, '', '');

-- atividade 1 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '10 90', '0.11');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '840 11', '76.36');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '1 50', '0.02');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '34 1000', '0.03');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '35 1000', '0.04');
-- atividade 2 **********************************************
 insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (2, '1 5 3 5
23 59 0 34
21 33 21 10
0 0 0 0', '120
35
1417');
-- atividade 3 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '10
20
30', '80');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '10
30
20', '60');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (3, '30
10
20', '100');
-- atividade 4 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (4, '1 1 0
0 0 0
1 0 0', 'C
*
A');
-- atividade 5 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '22 5 22', 'S');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '31 110 79', 'S');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (5, '45 8 7', 'N');

-- atividade 6 **********************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (6, 'F', 1, 
                       -- atv_titulo
                       'About MAP.', 
                       -- atv_descricao
                       'Explique a utiliação de um algoritmo MAP.
Explique sua sintaxe, seus parametros e quando podemos utilizar?',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);
-- atividade 7 **********************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (7, 'G', 1, 
                       -- atv_titulo
                       'About Filtros . . .', 
                       -- atv_descricao
                       'Sobre os algoritmos - Includes, Filter, Some, Find e Every...
Qual algoritmo de filtro conhecemos que é responsável por retornar o primeiro elemento de uma lista?',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);
-- atividade 8 **********************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (8, 'H', 1, 
                       -- atv_titulo
                       'About Filtros . . .', 
                       -- atv_descricao
                       'Sobre os algoritmos - Includes, Filter, Some, Find e Every...
Qual algoritmo de filtro conhecemos que é responsável por retornar uma nova lista contendo elementos de uma lista?',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);
-- atividade 9 **********************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (9, 'I', 1, 
                       -- atv_titulo
                       'About Filtros . . .', 
                       -- atv_descricao
                       'Sobre os algoritmos - Includes, Filter, Some, Find e Every...
Quais algoritmos de filtro conhecemos que são responsáveis por retornar TRUE/FALSE conforme uma regra onde deve aplicar em todos ou em pelo menos um elemento da lista? ',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);
-- atividade 10 **********************************************
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (10, 'J', 1, 
                       -- atv_titulo
                       'About Filtros . . .', 
                       -- atv_descricao
                       'Sobre os algoritmos - Includes, Filter, Some, Find e Every...
Qual algoritmo de filtro conhecemos que é responsável por retornar TRUE/FALSE conforme uma regra que nos indica se um valor existe em uma lista, lista a qual só pode conter valores primitivos (inteiros, textos) não podendo ser objetos diferenciando dos demais algoritmos.',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);