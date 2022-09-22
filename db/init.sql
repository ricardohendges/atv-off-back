CREATE TABLE dupla (
    dup_id int primary key not null,
    dup_nome varchar(50) not null,
    dup_usuario varchar(10) not null,
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
               values (1, 'A', 1, 1234, 'atividade 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et tortor at risus viverra adipiscing at in. Tristique risus nec feugiat in fermentum posuere urna nec tincidunt. Turpis egestas maecenas pharetra convallis posuere morbi leo urna. Vitae purus faucibus ornare suspendisse sed nisi lacus sed. In nulla posuere sollicitudin aliquam ultrices sagittis. Phasellus egestas tellus rutrum tellus. Phasellus faucibus scelerisque eleifend donec. Eget mi proin sed libero enim sed. Feugiat nibh sed pulvinar proin gravida hendrerit lectus.', 'Lectus arcu bibendum at varius vel pharetra vel turpis. Nunc scelerisque viverra mauris in aliquam sem fringilla. Dictumst quisque sagittis purus sit amet volutpat consequat. Aliquet bibendum enim facilisis gravida neque convallis. Lectus quam id leo in vitae turpis massa sed elementum. Condimentum mattis pellentesque id nibh. Risus ultricies tristique nulla aliquet enim tortor at auctor. Augue interdum velit euismod in. Cursus sit amet dictum sit. Enim nunc faucibus a pellentesque sit. Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Dui vivamus arcu felis bibendum ut tristique et egestas. Nulla pellentesque dignissim enim sit. Tempor nec feugiat nisl pretium. Ac odio tempor orci dapibus ultrices in iaculis.', 'Fringilla urna porttitor rhoncus dolor purus non enim praesent. Posuere morbi leo urna molestie at elementum eu. Eu feugiat pretium nibh ipsum consequat nisl. At auctor urna nunc id cursus metus aliquam eleifend mi. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Netus et malesuada fames ac. Ullamcorper eget nulla facilisi etiam dignissim diam. Viverra orci sagittis eu volutpat odio facilisis. Pellentesque diam volutpat commodo sed. Ultricies lacus sed turpis tincidunt id. Dui id ornare arcu odio ut sem nulla pharetra diam. Augue neque gravida in fermentum et sollicitudin ac. Mauris nunc congue nisi vitae suscipit tellus. Netus et malesuada fames ac turpis egestas maecenas pharetra. Fusce id velit ut tortor pretium. Convallis convallis tellus id interdum velit. Ultrices eros in cursus turpis massa tincidunt dui. Dui nunc mattis enim ut tellus elementum sagittis.');
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

insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '1 2', '3');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '10 20', '30');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, '00', '31');