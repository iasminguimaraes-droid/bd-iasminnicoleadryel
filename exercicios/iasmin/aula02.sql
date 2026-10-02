-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1
CREATE TABLE LIVRO (
    id INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano INT,
    exemplares INT NOT NULL DEFAULT 1
);

INSERT INTO LIVRO (id, titulo, autor, ano, exemplares)
VALUES (1, 'Dom Casmurro', 'Machado de Assis', 1899, 5);

INSERT INTO LIVRO (id, titulo, autor, ano)
VALUES (2, 'O Alquimista', 'Paulo Coelho', 1988);


-- ex2

CREATE TABLE LEITOR (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

INSERT INTO LEITOR (id, nome) VALUES (1, 'Ana Silva');
INSERT INTO LEITOR (id, nome) VALUES (2, 'Bruno Costa');
INSERT INTO LEITOR (id, nome) VALUES (3, 'Carla Souza');

ALTER TABLE LEITOR ADD telefone VARCHAR(20);

SELECT * FROM LEITOR;


-- ex3



-- ex4


-- ex5


-- ex6
