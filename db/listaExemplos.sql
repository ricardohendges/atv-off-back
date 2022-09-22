CREATE TABLE exemplo (
    exe_id SERIAL primary key not null,
    atv_id int not null,
    exe_entrada text not null,
    exe_saida text not null
);

insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '1 2', '3');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (1, '10 20', '30');
insert into exemplo (atv_id, exe_entrada, exe_saida)
           values (2, '00', '31');
