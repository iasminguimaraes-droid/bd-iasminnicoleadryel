-- Projeto - 03 - Consultas
-- Dono:
--
-- As perguntas que o banco responde. Antes de cada consulta, escreva em
-- comentario a pergunta em portugues. Se a pergunta nao cabe numa linha,
-- provavelmente sao duas consultas.

-- Projeto - 03 - Consultas: Sistema de Gerenciamento de Trios
-- Dono: Iasmin
--
-- As perguntas que o banco responde. Antes de cada consulta, escreva em
-- comentario a pergunta em portugues. Se a pergunta nao cabe numa linha,
-- provavelmente sao duas consultas.

-- 1. Quais sao todos os trios cadastrados e suas datas de criacao?
SELECT nome, data_criacao
FROM trio
ORDER BY data_criacao;

-- 2. Quais integrantes pertencem ao Trio Alfa e qual a funcao de cada um?
SELECT i.nome, i.funcao
FROM integrante i
JOIN trio t ON i.id_trio = t.id_trio
WHERE t.nome = 'Trio Alfa';

-- 3. Quais trios ja concluiram alguma atividade e qual foi a pontuacao obtida?
SELECT t.nome AS trio, a.descricao AS atividade, p.pontuacao
FROM participacao_trio p
JOIN trio t ON p.id_trio = t.id_trio
JOIN atividade a ON p.id_atividade = a.id_atividade
WHERE p.status = 'Concluido'
ORDER BY p.pontuacao DESC;

-- 4. Qual a pontuacao total acumulada de cada trio nas atividades concluidas?
SELECT t.nome AS trio, SUM(p.pontuacao) AS pontuacao_total
FROM trio t
JOIN participacao_trio p ON t.id_trio = p.id_trio
WHERE p.status = 'Concluido'
GROUP BY t.nome
ORDER BY pontuacao_total DESC;

-- 5. Quais atividades ainda estao pendentes ou em andamento e com quais trios?
SELECT a.descricao AS atividade, t.nome AS trio, p.status
FROM participacao_trio p
JOIN trio t ON p.id_trio = t.id_trio
JOIN atividade a ON p.id_atividade = a.id_atividade
WHERE p.status <> 'Concluido';
