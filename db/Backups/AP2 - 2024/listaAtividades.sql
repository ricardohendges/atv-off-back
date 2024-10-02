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
                       'Impriva o valor da média conforme exemplos. Repeite 2 casas decimais!'
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
                       'Imprima a média final e se o aluno foi aprovado, reprovado ou se esta em exame conforme exemplos. Repeite 2 casas decimais!');

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

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (5, 'E', 1, 
                       -- atv_titulo
                       'Cantina do povo', 
                       -- atv_descricao
                       'A tia da cantina não esta vencendo fazer a venda de seus lanches.
Para ajudar-la, crie um algoritmo que calcule com base no código do produto, qual valor total da compra.

O cliente irá informar o código do produto e quantos produtos deseja.

Tabela de produtos para você validar os preços unitários:
100 - Cachorro quente 7,50
101 - Xis 15,30
102 - Esfira 4,50
103 - Mini Pizza 6,00
104 - Enroladinho 5,50
105 - Fandangos 10,00
106 - Doritos 11,00
107 - Suco 5,00
108 - Água 2,50
109 - Refrigerante (2L) 8,00',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Você deve informar o total da compra com base nas entradas e dar a saída conforme exemplos. Repeite 2 casas decimais!'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (6, 'F', 1, 
                       -- atv_titulo
                       'Peso ideal', 
                       -- atv_descricao
                       'Para auxiliar povo de Edf. a fazer o calculo de peso ideal mais facilemente de seus clientes.
Construa um algoritmo que calcule o peso ideal de uma pessoa. Para isso precisamos do peso e saber o sexo, de resto é só calcular...

Fórmula:
Homem = (72,7 x altura) - 58
Mulher = (62,1 x altura) - 44,7',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Você deve informar o peso ideal da pessoa conforme exemplos de saída. Repeite 2 casas decimais!'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (7, 'G', 1, 
                       -- atv_titulo
                       'São Multiplos?', 
                       -- atv_descricao
                       'Para auxiliar o matemático Odracir a ver se determinados números dentro de um range de [1 até X] devemos criar um algoritmo que imprima somente numeros MULTIPLOS desse numero.
Para isso iremos receber qual é o número que queremos validar e o numero MÁXIMO (X) que iremos tentar calcular.',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Você deve informar todos números multiplos de 1 até X conforme exemplos de saída.'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (8, 'H', 1, 
                       -- atv_titulo
                       'A Formula Jamais Vista!', 
                       -- atv_descricao
                       'O matemático Odacir quer fazer um teste de conceito em cima de uma formula matemática e conforme sua explicação, crie o algoritmo para o auxiliar.
Você irá receber 3 valores! Um valor inicial que sera incrementado, um decrementador e um valor máximo.
Odacir com isso, quer saber QUANTAS vezes precisou incrementar (valor atual - decrementador) para o valor inicial chegar ao valor máximo.
Ex: Com os valores inicia = 5, decrem = 4 e max = 10;
Fazendo uso a formula de incremento: inicial += inicial - decrem
Temos que saber quantas vezes isso será executado, deve ser executa enquanto o valor inicial não iguale ou supere o valor máximo.

Nesse caso teremos uma saida 3!
Na primeira execução = inicial += inicial - decrem (inicial=5 e decrem=4) então inicial se torna 6
Como ainda é menor que o máximo, a formula deve ser executada novamente.
Na segunda execução = inicial += inicial - decrem (inicial=6 e decrem=4) então inicial se torna 8
Como ainda é menor que o máximo, a formula deve ser executada novamente.
Na segunda execução = inicial += inicial - decrem (inicial=8 e decrem=4) então inicial se torna 12

Como nesse momento o valor igualou ou superou o valor máximo, devemos dizer QUANTAS vezes a formula precisou ser executada.',
                       -- atv_entrada
                       'Considere o bloco de exemplo de entrada como sendo o inicio de seu algoritmo.',
                       -- atv_saida
                       'Você deve informar apenas o número total de execuções que a fórmula precisou passar para o valor inicial igualar ou superar o valor máximo.'
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (9, 'I', 1, 
                       -- atv_titulo
                       '', 
                       -- atv_descricao
                       '',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);

-- ***********************************************************
-- ***********************************************************

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (10, 'J', 1, 
                       -- atv_titulo
                       '', 
                       -- atv_descricao
                       '',
                       -- atv_entrada
                       '', 
                       -- atv_saida
                       ''
);
