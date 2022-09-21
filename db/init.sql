CREATE TABLE dupla (
    dup_id int primary key not null,
    dup_nome varchar(50) not null,
    dup_usuario varchar(10) not null,
    dup_password varchar(10) not null
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
    exe_id int primary key not null,
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
           values (1, 'DJONATAN WILLENZ && IAN SCHMIDT', 'DJOEIAN', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (2, 'FABIO WRZESINSKI && JOÃO MALLMANN', 'FABEJOA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (3, 'GABRIEL KUNZ && LUIZ JUNIOR', 'GABELUI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (4, 'GUILHERME ZAHN && ALEXANDRE JUNGES', 'GUIEALE', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (5, 'IURI PAGNUSSAT && JOÃO SANTOS', 'IUREJOA', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (6, 'MAGLAN BIEGER && KAUAN HEISLER', 'MAGEKAU', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (7, 'ODAIR SEHN && MATHEUS TOGNI', 'ODAEMAT', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (8, 'ADILSON JUNIOR && GABRIEL DA LUZ', 'ADIEGAB', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (9, 'CLAUDINEI MAYOLO && EDIVAN MAYOLO', 'CLAEEDI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (10, 'CRISTYAN SCHABARUM && JULIAN WEBER', 'CRIEJUL', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (11, 'RAFAEL HENDGES && CRISTIAN ENGEL', 'RAFECRI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (12, 'ALISSON DE SOUZA && HERICK BALENSIEFER', 'ALIEHER', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (13, 'CARLOS SILVA && CRISTIAN MÜLLER', 'CARECRI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (14, 'CRISTIAN FELDKIRCHER && DOUGLAS CUCHI', 'CRIEDOU', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (15, 'GUSTAVO WIEBBELING && RENAN SCHABARUM', 'GusuarioEN', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (16, 'LEANDRO CANELLO && THIAGO VANAZZI', 'LEAETHI', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (17, 'MAICON PEREIRA && WILLIAN BADIA', 'MAIEWIL', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (18, 'MAICON KAPPAUN && PAULO RÜDIGER', 'MAIEPAU', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (19, 'KARIN SERAFINI && DANIMAR ALBANI', 'KAREDAN', '123456');
insert into dupla (dup_id, dup_nome, dup_usuario, dup_password)
           values (99, 'BOSS RICARDO!', 'ADMIN', '2468555');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (1, 'A', 1, 1234, 'atividade 1', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (2, 'B', 1, 1234, 'atividade 2', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (3, 'C', 1, 1234, 'atividade 3', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (4, 'D', 1, 1234, 'atividade 4', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (5, 'E', 1, 1234, 'atividade 5', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (6, 'F', 1, 1234, 'atividade 6', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (7, 'G', 1, 1234, 'atividade 7', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (8, 'H', 1, 1234, 'atividade 8', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (9, 'I', 1, 1234, 'atividade 9', 'descrição completa', 'entradas ... bla', 'saidas... bla');
insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (10, 'J', 1, 1234, 'atividade 10', 'descrição completa', 'entradas ... bla', 'saidas... bla');