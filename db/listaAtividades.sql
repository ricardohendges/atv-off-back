insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (1, 'A', 1, 9583, 
                       'De volta para o presente', 
                       'Imagine que você tenha uma máquina do tempo que pode ser usada no máximo três vezes, e a cada uso da máquina você pode escolher voltar para o passado ou ir para o futuro. A máquina possui três créditos fixos; cada crédito representa uma certa quantidade de anos, e pode ser usado para ir essa quantidade de anos para o passado ou para o futuro. Você pode fazer uma, duas ou três viagens, e cada um desses três créditos pode ser usado uma vez apenas. Por exemplo, se os créditos forem 5, 12 e 9, você poderia decidir fazer duas viagens: ir 5 anos para o futuro e, depois, voltar 9 anos para o passado. Dessa forma, você terminaria quatro anos no passado, em 2018. Também poderia fazer três viagens, todas indo para o futuro, usando os créditos em qualquer ordem, terminando em 2048.
Neste problema, dados os valores dos três créditos da máquina, seu programa deve dizer se é ou não possível viajar no tempo e voltar para o presente, fazendo pelo menos uma viagem e, no máximo, três viagens; sempre usando cada um dos três créditos no máximo uma vez.', 
                       'A entrada consiste de uma linha contendo os valores dos três créditos A, B e C (1 ≤ A, B, C ≤ 1000).', 
                       'Seu programa deve imprimir uma linha contendo o caracter “S” se é possível viajar e voltar para o presente, ou “N” caso contrário.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (2, 'B', 1, 2717, 
                       'Fatorando', 
                       'O fatorial de um número inteiro positivo N, denotado por N!, é definido como o produto dos inteiros positivos menores do que ou iguais a N. Por exemplo 4! = 4 × 3 × 2 × 1 = 24.
Dado um inteiro positivo N, você deve escrever um programa para determinar o menor número k tal que N = a1! + a2! + ... + ak!, onde cada ai, para 1 ≤ i ≤ k, é um número inteiro positivo.
Por exemplo, para N = 10 a resposta é 3, pois é possível escrever N como a soma de três números fatoriais: 10 = 3! + 2! + 2!. Para N = 25 a resposta é 2, pois é possível escrever N como a soma de dois números fatoriais: 25 = 4! + 1!.',
                       'A entrada consiste de uma única linha que contém um inteiro N (1 ≤ N ≤ 105).', 
                       'Seu programa deve produzir uma única linha com um inteiro representando a menor quantidade de números fatoriais cuja soma é igual ao valor de N.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (3, 'C', 2, 4259, 
                       'Guarda Costeira', 
                       'Roubaram um banco na praia de Balneário e o ladrão fugiu em direção ao mar. Seu plano parece óbvio: ele pretende pegar um barco e escapar!
O fugitivo, que a essa altura já está a bordo de sua embarcação de fuga, pretende seguir perpendicularmente à costa em direção ao limite de águas internacionais, que fica a 12 milhas náuticas de distância, onde estará são e salvo das autoridades locais. Seu barco consegue percorrer essa distância a uma velocidade constante de VF nós.
A Guarda Costeira pretende interceptá-lo, e sua embarcação tem uma velocidade constante de VG nós. Supondo que ambas as embarcações partam da costa exatamente no mesmo instante, com uma distância de D milhas náuticas entre elas, será possível a Guarda Costeira alcançar o ladrão antes do limite de águas internacionais?
Assuma que a costa de Balneário é perfeitamente retilínea e o mar bastante calmo, de forma a permitir uma trajetória tão retilínea quanto a costa.', 
                       'A entrada é composta por diversos casos de teste e termina com final de arquivo (EOF). Cada caso de teste é descrito em um linha contendo três inteiros, D (1 ≤ D ≤ 100), VF (1 ≤ VF ≤ 100) e VG (1 ≤ VG ≤ 100), indicando respectivamente a distância inicial entre o fugitivo e a Guarda Costeira, a velocidade da embarcação do fugitivo e a velocidade da embarcação da Guarda Costeira.', 
                       'Para cada caso de teste imprima uma linha contendo "S" se for possível que a Guarda Costeira alcance o fugitivo antes que ele ultrapasse o limite de águas internacionais ou "N" caso contrário.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (4, 'D', 3, 7537, 
                       'atividade 4', 
                       'Em chats, é muito comum entre jovens e adolescentes utilizar sequências de letras, que parecem muitas vezes aleatórias, para representar risadas. Alguns exemplos comuns são:
huaauhahhuahau
hehehehe
ahahahaha
jaisjjkasjksjjskjakijs
huehuehue
Karin é uma jovem programadora que ficou intrigada pela sonoridade das “risadas digitais”. Algumas delas ela nem mesmo consegue pronunciar! Mas ela percebeu que algumas delas parecem transmitir melhor o sentimento da risada que outras. A primeira coisa que ela percebeu é que as consoantes não interferem no quanto as risadas digitais influenciam na transmissão do sentimento. A segunda coisa que ela percebeu é que as risadas digitais mais engraçadas são aquelas em que as sequências de vogais são iguais quando lidas na ordem natural (da esquerda para a direita) ou na ordem inversa (da direita para a esquerda), ignorando as consoantes. Por exemplo, “hahaha” e “huaauhahhuahau” estão entre as risadas mais engraçadas, enquanto “riajkjdhhihhjak” e “huehuehue” não estão entre as mais engraçadas.
Karin está muito atarefada com a análise estatística das risadas digitais e pediu sua ajuda para escrever um programa que determine, para uma risada digital, se ela é das mais engraçadas ou não.', 
                       'A entrada é composta por uma linha, contendo uma sequência de no máximo 50 caracteres, formada apenas por letras minúsculas sem acentuação. As vogais são as letras [a,e,i,o,u]. A sequência contém pelo menos uma vogal.', 
                       'Seu programa deve produzir uma linha contendo um caractere, “S” caso a risada seja das mais engraçadas, ou “N” caso contrário.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (5, 'E', 2, 3044, 
                       'ASAH', 
                       'Frustrado e desanimado com os resultados de sua equipe de futebol, ASAH resolveu investir na equipe de handebol. Para melhor avaliar os atletas, os técnicos identificaram que seria útil analisar a regularidade dos jogadores. Especificamente, eles estão interessados em saber quantos jogadores fizeram gols em todas as partidas.
Como o volume de dados é muito grande, eles gostariam de ter um programa de computador para realizar essa contagem.', 
                       'A primeira linha da entrada contém dois inteiros N e M (1 ≤ N ≤ 100 e 1 ≤ M ≤ 100), indicando respectivamente o número de jogadores e o número de partidas. Cada uma das N linhas seguintes descreve o desempenho de um jogador: a i-ésima linha contém M inteiros Xj (0 ≤ X j ≤ 100, para 1 ≤ j ≤ M ), informando o número de gols do i-ésimo jogador em cada partida.', 
                       'Seu programa deve produzir uma única linha, contendo um único inteiro, o número de jogadores que fizeram gols em todas as partidas.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (6, 'F', 3, 7447, 
                      'Café Open Bar na Horus', 
                      'O novo prédio da Horus possui 3 andares. Em determinadas épocas do ano, os alunos da Horus bebem muito café. Por conta disso, a Horus decidiu presentear os alunos com uma nova máquina de expresso. Esta máquina deve ser instalada em um dos 3 andares, mas a instalação deve ser feita de forma que as pessoas não percam muito tempo subindo e descendo escadas. 
Cada aluno bebe 1 café expresso por dia. Ele precisa ir do andar onde estuda até o andar onde está a máquina e voltar para sua sala. Todo aluno leva 1 minuto para subir ou descer um andar. Como a Horus se importa muito com a eficiência, ela quer posicionar a máquina de forma a minimizar o tempo total gasto subindo e descendo escadas.
Sua tarefa é ajudar a posicionar a máquina de forma a minimizar o tempo total gasto pelos aluno subindo e descendo escadas.', 
                      'A entrada consiste em 3 números, A1 , A2 , A3 (0 ≤ A1 , A2 , A3 ≤ 1000), um por linha, onde Ai representa o número de pessoas que estudam no i-ésimo andar.', 
                      'Seu programa deve imprimir uma única linha, contendo o número total de minutos a serem gastos com o melhor posicionamento possível da máquina.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (7, 'G', 3, 4880, 
                       'Salvando Saudades', 
                       'O recente terremoto em Saudades não chegou a afetar muito as edificações da metrópole. Mas os cientistas detectaram que o principal dique de contenção da barragem da coxilha teve um dano significativo na sua parte subterrânea que, se não for consertado rapidamente, pode causar o seu desmoronamento, com a consequente inundação de toda a metrópole.
O conserto deve ser feito por mergulhadores, a uma grande profundidade, em condições extremamente difíceis e perigosas. Mas como é a sobrevivência da própria cidade que está em jogo, seus moradores acudiram em grande número como voluntários para essa perigosa missão.
Como é tradicional em missões perigosas, cada mergulhador recebeu no início do mergulho uma pequena placa com um número de identificação. Ao terminar o mergulho, os voluntários devolvem a placa de identificação, colocando-a em um repositório.
O dique voltou a ser seguro, mas aparentemente alguns voluntários não voltaram do mergulho. Você foi contratado para a penosa tarefa de, dadas as placas colocadas no repositório, determinar quais voluntários perderam a vida salvando a cidade.', 
                       'A entrada contém vários casos de teste e termina com EOF. Cada caso de teste é composto de duas linhas. A primeira linha contém dois inteiros N e R ( 1 ≤ R ≤ N ≤ 104), indicando respectivamente o número de voluntários que mergulhou e o número de voluntários que retornou do mergulho. Os voluntários são identificados por números de 1 a N. A segunda linha da entrada contém R inteiros, indicando os voluntários que retornaram do mergulho (ao menos um voluntário retorna do mergulho).', 
                       'Seu programa deve produzir uma única linha para cada caso de teste, contendo os identificadores dos voluntários que não retornaram do mergulho, na ordem crescente de suas identificações. Deixe um espaço em branco após cada identificador (note que isto significa que deve haver um espaço em branco também após o último identificador). Se todos os voluntários retornaram do mergulho, imprima apenas o caractere "*" (asterisco).');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (8, 'H', 3, 3292, 
                       'Gaiola Trial No12 2022', 
                       'Para a maior competição automobilística de Saudades o aguardadíssimo Gaiola Trial necessitamos de um algoritmo para identificar retardatários. É bastante comum que o líder de uma prova, em determinado momento, ultrapasse o último colocado. O líder, neste momento, está uma volta à frente do último colocado, que se torna, assim, um retardatário. Neste problema, dados os tempos que o piloto mais rápido e o piloto mais lento levam para completar uma volta, você deve determinar em que volta o último colocado se tornará um retardatário, ou seja, será ultrapassado pelo líder. Você deve considerar que, inicialmente, eles estão lado a lado, na linha de partida do circuito, ambos no início da volta de número 1 (a primeira volta da corrida); e que uma nova volta se inicia sempre depois que o líder cruza a linha de partida.', 
                       'A única linha da entrada contém dois números inteiros X e Y (1 ≤ X < Y ≤ 10000), os tempos, em segundos, que o piloto mais rápido e o piloto mais lento levam para completar uma volta, respectivamente.', 
                       'Seu programa deve produzir uma única linha, contendo um único inteiro: a volta em que o piloto mais lento se tornará um retardatário.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (9, 'I', 4, 1412, 
                       'Criptografando', 
                       'Dada uma configuração inicial, a máquina de criptografia pinhalense a famosa ‘Cripto-Grafa’, substituía cada letra digitada no teclado por outra letra. A substituição era bastante complexa, mas a máquina tinha uma vulnerabilidade: uma letra nunca seria substituída por ela mesma! Essa vulnerabilidade foi explorada por Alan Turing, que trabalhou na criptoanálise da Cripto-Grafa durante anos. O objetivo era encontrar a configuração inicial da máquina usando a suposição de que a mensagem continha uma certa expressão usual da comunicação, como por exemplo a palavra ARMADA. Essas expressões eram chamadas de cribs. Se a mensagem cifrada era, por exemplo, FDMLCRDMRALF, o trabalho de testar as possíveis configurações da máquina era simplificado porque a palavra ARMADA, se estivesse nessa mensagem cifrada, só poderia estar em duas posições, ilustradas na tabela abaixo com uma seta. As demais cinco posições não poderiam corresponder ao crib ARMADA porque ao menos uma letra do crib, sublinhada na tabela abaixo, casa com sua correspondente na mensagem cifrada; como a Cripto-Grafa nunca substitui uma letra por ela própria, essas cinco posições poderiam ser descartadas nos testes.
Neste problema, dada uma mensagem cifrada e um crib, seu programa deve computar o número de posições possíveis para o crib na mensagem cifrada.', 
                       'A primeira linha da entrada contém a mensagem cifrada, que é uma sequência de pelo menos uma letra e no máximo 104 letras. A segunda linha da entrada contém o crib, que é uma sequência de pelo menos uma letra e no máximo o mesmo número de letras da mensagem. Apenas as 26 letras maiúsculas, sem acentuação, aparecem na mensagem e no crib.', 
                       'Imprima uma linha contendo um inteiro, indicando o número de posições possíveis para o crib na mensagem cifrada.');

insert into atividade (atv_id, atv_code, atv_dificuldade, atv_quantidade, atv_titulo, atv_descricao, atv_entrada, atv_saida)
               values (10, 'J', 5, 1818, 
                       'Hora da Corrida', 
                       'Rafael leva muito a sério seu condicionamento físico e, diariamente às 6h da manhã, chova ou faça sol, no verão e no inverno, ele corre no entorno de Saudades. Ao longo da pista de corrida existem N lombadas igualmente espaçadas. Para não desanimar do exercício, Rafael conta o número de lombadas pelas quais ele já passou e verifica se ele já correu pelo menos 10%, pelo menos 20%, : : : , pelo menos 90% do percurso.
Vamos ajudar o Rafael, calculando para ele o número de lombadas que ele precisa contar para ter completado pelo menos 10%, 20%, : : : , 90% da corrida, dados o número de voltas que ele pretende correr e o número total de lombadas ao longo da pista.
Por exemplo, suponhamos que Rafael queira dar 3 voltas e o número de lombadas seja 17. Então, para garantir ter corrido pelo menos 30% do percurso, ele precisa contar 16 lombadas. Para garantir pelo menos 60%, ele precisa contar 31 lombadas.
', 
                       'A entrada consiste de uma única linha que contém dois inteiros, V e N (1 ≤ V;N ≤ 104), onde V é o número pretendido de voltas e N é o número de lombadas na pista.', 
                       'Seu programa deve produzir uma única linha com nove inteiros representando os números de lombadas que devem ser contadas para garantir o cumprimento, respectivamente, de 10%, 20%, : : : , 90% da meta.');