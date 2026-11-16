-- Projeto - 02 - Carga
-- Dono:
--
-- Enche as tabelas criadas pelo 01-ddl.sql.
-- Ordem importa: quem tem chave estrangeira entra depois de quem ela aponta.

-- Projeto - 02 - Carga: Sistema de Gerenciamento de Trios
-- Dono: Iasmin
--
-- Enche as tabelas criadas pelo 01-ddl.sql.
-- Ordem importa: quem tem chave estrangeira entra depois de quem ela aponta.

-- 1. Tabela independente: trio
INSERT INTO trio (id_trio, nome, data_criacao) VALUES
(1, 'Trio Alfa', '2026-03-01'),
(2, 'Trio Beta', '2026-03-05'),
(3, 'Trio Gama', '2026-03-10');

-- 2. Tabela independente: atividade
INSERT INTO atividade (id_atividade, descricao, data_atividade) VALUES
(10, 'Modelagem Conceitual', '2026-04-10'),
(20, 'Criacao do Banco DDL', '2026-04-20'),
(30, 'Carga e Consultas SQL', '2026-05-05');

-- 3. Tabela dependente: integrante (depende de trio)
INSERT INTO integrante (id_integrante, nome, funcao, id_trio) VALUES
(101, 'Iasmin', 'Lider', 1),
(102, 'Lucas', 'Desenvolvedor', 1),
(103, 'Mariana', 'Analista', 1),
(104, 'Pedro', 'Lider', 2),
(105, 'Carla', 'Desenvolvedora', 2),
(106, 'Rafael', 'Analista', 2),
(107, 'Beatriz', 'Lider', 3),
(108, 'Thiago', 'Desenvolvedor', 3),
(109, 'Fernanda', 'Analista', 3);

-- 4. Tabela associativa: participacao_trio (depende de trio e atividade)
INSERT INTO participacao_trio (id_trio, id_atividade, pontuacao, status) VALUES
(1, 10, 95, 'Concluido'),
(1, 20, 100, 'Concluido'),
(1, 30, 0, 'Em andamento'),
(2, 10, 88, 'Concluido'),
(2, 20, 92, 'Concluido'),
(3, 10, 80, 'Concluido'),
(3, 30, 0, 'Pendente');
