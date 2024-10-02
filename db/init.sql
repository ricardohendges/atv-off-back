CREATE TABLE dupla (
    dup_id int primary key not null,
    dup_nome varchar(50) not null,
    dup_usuario varchar(30) not null,
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
    sub_data timestamp not null,
    sub_ip text not null
);

insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (1, 'ALEXANDRE KLEITNSCHMITT WESTENHOFEN', 'ALEXANDRE.WESTENHOFEN', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (2, 'AMANDA BRIZOLA', 'AMANDA.BRIZOLA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (3, 'ARTHUR HENRIQUE LAVARDA DAL BEM', 'ARTHUR.BEM', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (4, 'ARTHUR VINÍCIUS TOCHETTO CARMINATTI', 'ARTHUR.CARMINATTI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (5, 'EDUARDO ROGÉRIO ORTH', 'EDUARDO.ORTH', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (6, 'EMILI CAROLINE DE OLIVEIRA TEIXEIRA', 'EMILI.TEIXEIRA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (7, 'ENRIKE FICAGNA', 'ENRIKE.FICAGNA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (8, 'ERIVELTON CASSARO', 'ERIVELTON.CASSARO', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (9, 'FELIPE ZANCHET', 'FELIPE.ZANCHET', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (10, 'GABRIEL SILVEIRA BOTEZINI', 'GABRIEL.BOTEZINI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (11, 'GIAN VICTOR SOLIVO PEZENATTO', 'GIAN.PEZENATTO', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (12, 'GIOVANNI GOMES CASTAGNA', 'GIOVANNI.CASTAGNA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (13, 'GUILHERME MENIN ARNECKE', 'GUILHERME.ARNECKE', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (14, 'GUILHERME RODRIGO ENGLER KIPPER', 'GUILHERME.KIPPER', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (15, 'GUSTAVO HENRIQUE REINEHR', 'GUSTAVO.REINEHR', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (16, 'HEITOR LUIZ BIAZEBETTI FLOSS', 'HEITOR.FLOSS', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (17, 'HENRIQUE GABRIEL ASCARI SOLIVO', 'HENRIQUE.SOLIVO', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (18, 'JEOVAN MAILON DE ABREU', 'JEOVAN.ABREU', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (19, 'JORDAN JOSÉ RODRÍGUEZ MARCANO', 'JORDAN.MARCANO', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (20, 'JUAN GUSTAVO MICHELS', 'JUAN.MICHELS', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (21, 'RAFAEL AUGUSTO RIPKE', 'RAFAEL.RIPKE', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (22, 'YURI CORRADI', 'YURI.CORRADI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (99, 'BIG BOSS', 'ADMIN', '246855');
-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (1, 'A', 1, 
                       -- atv_titulo
                       'Média Simples', 
                       -- atv_descricao
                       'Para determinar uma média que não tenha pesos nas suas notas, em resumo precisamos somar e dividir o valor pela quantia de notas. Então, assim faça!

A entrada será composta por um array que possuí um numero indefinido de notas, você deve informar a média dessas notas.',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.', 
                       -- atv_saida
                       'Impriva o valor da média conforme exemplos.'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (2, 'B', 1, 
                       -- atv_titulo
                       'Estará Aprovado?', 
                       -- atv_descricao
                       'Para definir a aprovação dos alunos da turma Algoritmos 2 do curso de Sistemas de Informação da Horus Faculdades, o professor Ricardo precisa de ajuda para calcular a Média Final da turma.

Essa média será ponderada pelos pesos das notas, onde o peso total das Provas A1 + A2 contam 60% da nota total e o trabalho final do Beecrowd é somente de 40% da nota final.

Com base nesse calculo ele saberá quem está aprovado, caso sua nota final ser acima de 7.5, reprovado com nota abaixo de 4 ou em exame se ficar >= 4 e < 7.5.
',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Imprima a média final e se o aluno foi aprovado, reprovado ou se esta em exame conforme exemplos.');

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (3, 'C', 1, 
                       -- atv_titulo
                       'Quem é Maior?', 
                       -- atv_descricao
                       'O algoritmo terá dois valores numéricos e quer saber qual deles é o maior.',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Imprima qual dos dois valores é o maior.'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (4, 'D', 1, 
                       -- atv_titulo
                       'Calculando Freelas', 
                       -- atv_descricao
                       'Assim que a empresa RJHTEC começou a permitir terceiros a trabalharem com freela, ela começou a perder a mão nos valores gastos, passou a ter dificuldades em gerenciar os valores.
Com isso, ela resolveu adotar uma tabela conforme a senioridade de seus contratados, e não deixando que eles impusessem um valor da hora, mas sim, dependendo da sua senioridade receberia um valor tabelado.

Sendo assim, segue a relação:
1 - Estagiário: 1,99
2 - Junior: 8,50
3 - Pleno: 12,50
4 - Senior: 19,99
5 - Especialista: 25,75

Com essa tabela, a única informação que o terceiro irá informar é Qual sua Senioridade e Quanto tempo ele vai demorar para finalizar o projeto.',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Você deve informar o total do orçamento com base nas entradas e dar a saída conforme exemplos. Repeite 2 casas decimais!'
);

-- ***********************************************************
-- ***********************************************************
-- atividade 1 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, 'let notas = [3.4, 7.1, 6.4, 8.2]', 'MEDIA = 6.27');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, 'let notas = [4.6, 7.9, 9.1]', 'MEDIA = 7.2');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, 'let notas = [6.1, 9.3, 10, 8.7, 6]', 'MEDIA = 8.02');
-- atividade 2 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, 'let notaA1 = 5
let notaA2 = 8
let beecrowd = 10', 'MEDIA = 7.90
ALUNO APROVADO');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, 'let notaA1 = 6
let notaA2 = 7
let beecrowd = 8', 'MEDIA = 7.10
ALUNO EM EXAME');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, 'let notaA1 = 3.1
let notaA2 = 3.6
let beecrowd = 4.7', 'MEDIA = 3.89
ALUNO REPROVADO');

-- atividade 3 **********************************************
 insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (3, 'let A = 6
let B = 7', 'Maior: 7');
 insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (3, 'let A = 6
let B = 6', 'Maior: 6');
 insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (3, 'let A = 7
let B = 6', 'Maior: 7');

-- atividade 4 **********************************************
insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (4, 'let senioridade = 1
let tempoProjeto = 120', 'R$ Orçamento: 238.80');
insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (4, 'let senioridade = 2
let tempoProjeto = 150', 'R$ Orçamento: 1275.00');
insert into exemplo (atv_id, exe_entrada, exe_saida)
            values (4, 'let senioridade = 4
let tempoProjeto = 50', 'R$ Orçamento: 999.49');
