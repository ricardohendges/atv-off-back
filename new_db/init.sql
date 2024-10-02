-- Criar a tabela para cadastro de cursos (Sistemas de Informação, Contabilidade, Administração, Etc...)
CREATE table t_curso (
    cur_id SERIAL primary key not null,
    cur_nome varchar(50) not null
);
insert into t_curso (cur_nome) values ('Sistemas de Informação');
insert into t_curso (cur_nome) values ('Administração');
insert into t_curso (cur_nome) values ('Contabilidade');
insert into t_curso (cur_nome) values ('Educação Fisica');

-- Criar a tabela para cadastro de materias (Linguagem de Programação, IA, Algoritmos e Programação I e II)
CREATE TABLE t_materia (
    mat_id SERIAL PRIMARY KEY,
    mat_nome VARCHAR(100),
    cur_id INT REFERENCES t_curso(cur_id) not null
);
insert into t_materia (mat_nome, cur_id) values ('Algoritmos e Programação I', 1);
insert into t_materia (mat_nome, cur_id) values ('Algoritmos e Programação II', 1);
insert into t_materia (mat_nome, cur_id) values ('Linguagem de Programação III', 1);
insert into t_materia (mat_nome, cur_id) values ('Linguagem de Programação Visual', 1);
insert into t_materia (mat_nome, cur_id) values ('Inteligencia Artificial', 1);
insert into t_materia (mat_nome, cur_id) values ('Teoria Geral de Sistemas', 1);
insert into t_materia (mat_nome, cur_id) values ('Ecossistemas de Inovação', 1);

-- Criar a tabela para cadastro de permissões do Sistema (ADM, PROFESSOR, ALUNO, COORDENADOR, ETC...)
CREATE table t_permissao (
    per_id SERIAL primary key not null,
    per_nome varchar(50) not null,
    per_observacao text
);
insert into t_permissao (per_nome) values ('Admin');
insert into t_permissao (per_nome) values ('Professor');
insert into t_permissao (per_nome) values ('Aluno');
-- Criar a tabela para cadastro de usuarios
CREATE table t_usuario (
    usu_id SERIAL primary key not null,
    usu_nome varchar(75) not null,
    usu_username varchar(40) not null unique,
    usu_password text,
    dup_first_access BOOLEAN default '1' not null,
    usu_fone varchar(30),
    usu_email varchar(60),
    usu_recover varchar(60)
);
insert into t_usuario (usu_id, usu_nome, usu_username, usu_password) 
               values (1, 'Ricardo Hendges', 'ricardo.hendges', '662bc28943f9cf2b29d549a16c2eaba89e85073e0b1270b19d69edea6609936714c61658ac7c6a90dc7779dd0f44bfac9b8e3a9e398943fff4e3cc45eb93d8f5');
-- Criar a tabela para cadastro de salts dos usuarios para maior segurança, table criada separada.
CREATE table t_salt (
    usu_id INT REFERENCES t_usuario(usu_id) primary key,
    sal_salt text not null
);
insert into t_salt (usu_id, sal_salt) 
            values (1, 'd9205b8ea0b6a37773633a3bb4d7dd9e');
-- Criar a tabela para vinculo entre usuarios e permissões
CREATE table t_usu_per (
    per_id INT REFERENCES t_permissao(per_id) not null,
    usu_id INT REFERENCES t_usuario(usu_id) not null,
    CONSTRAINT usu_per_unique UNIQUE (per_id, usu_id)
);
insert into t_usu_per (per_id, usu_id) values (1, 1);
insert into t_usu_per (per_id, usu_id) values (2, 1);
-- Criar a tabela para cadastro do ano/semestre
CREATE table t_ano (
    ano_id SERIAL primary key not null,
    ano_valor int not null,
    ano_semestre int not null,
    CONSTRAINT ano_semestre_unique UNIQUE (ano_valor, ano_semestre)
);
insert into t_ano (ano_valor, ano_semestre) values (2024, 1);
insert into t_ano (ano_valor, ano_semestre) values (2024, 2);
insert into t_ano (ano_valor, ano_semestre) values (2025, 1);
insert into t_ano (ano_valor, ano_semestre) values (2025, 2);
-- Criar a tabela para cadastro e efetivação de usuario como Professor vinculando-o há materia
CREATE table t_pro_mat (
    prm_id SERIAL primary key not null,
    mat_id INT REFERENCES t_materia(mat_id) not null,
    usu_id INT REFERENCES t_usuario(usu_id) not null,
    ano_id INT REFERENCES t_ano(ano_id) not null,
    prm_situacao varchar(50) default 'Aguardando' not null,
    prm_observacao text,
    CONSTRAINT prof_unico UNIQUE (mat_id, usu_id, ano_id)
);
-- Criar a tabela para cadastro e efetivação de usuarios como Aluno em Determinada Matéria
CREATE table t_alu_mat (
    alm_id SERIAL primary key not null,
    prm_id INT REFERENCES t_pro_mat(prm_id) not null,
    usu_id INT REFERENCES t_usuario(usu_id) not null,
    alm_situacao varchar(50) default 'Cursando' not null,
    alm_observacao text,
    CONSTRAINT aluno_unico UNIQUE (prm_id, usu_id)
);
-- Criar a tabela para cadastro de trabalhos de uma Matéria
CREATE table t_trabalho (
    tra_id SERIAL primary key not null,
    prm_id INT REFERENCES t_pro_mat(prm_id) not null,
    tra_descricao varchar(100) not null,
    tra_inicio date not null,
    tra_final date not null,
    tra_situacao varchar(30) default 'Rascunho' not null
);
-- Criar a tabela de notas pelo trabalho executado.
CREATE table t_notas (
    not_id SERIAL primary key not null,
    tra_id INT REFERENCES t_trabalho(tra_id) not null,
    alm_id INT REFERENCES t_alu_mat(alm_id) not null,
    not_valor numeric (10, 2) default 0 not null,
    not_situacao varchar(30) default 'Processando' not null,
    not_observacao text,
    CONSTRAINT nota_unica UNIQUE (tra_id, alm_id)
);
-- Criar a tabela de atividades para um determinado Trabalho
CREATE table t_atividade (
    atv_id SERIAL primary key not null,
    tra_id INT REFERENCES t_trabalho(tra_id) not null,
    atv_codigo varchar(10) not null,
    atv_titulo varchar(40) not null,
    atv_descricao text not null,
    atv_entrada text not null,
    atv_saida text not null,
    atv_imagem varchar(255),
    CONSTRAINT atividade_unica UNIQUE (tra_id, atv_codigo)
);
-- Criar a tabela de exemplos de entrada/saida para uma atividade
CREATE table t_exemplo (
    exe_id SERIAL primary key not null,
    atv_id INT REFERENCES t_atividade(atv_id) not null,
    exe_entrada text not null,
    exe_saida text not null
);
-- Criar a tabela de submissoes dos alunos para determinada atividade
CREATE table t_submissao (
    sub_id SERIAL primary key not null,
    alm_id INT REFERENCES t_alu_mat(alm_id) not null,
    atv_id INT REFERENCES t_atividade(atv_id) not null,
    sub_status varchar(50) default 'processing...' not null,
    sub_data timestamp not null,
    sub_feedback text,
    sub_nota numeric (10, 2) default 0 not null
);