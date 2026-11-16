-- Projeto - 01 - DDL
-- Dono:
--
-- Cria as tabelas do caso do trio, vazias.
-- Roda num banco em branco: nada pode depender de tabela criada fora daqui.
-- Minimo 4 tabelas, e uma associativa com atributo proprio.

-- Projeto - 01 - DDL: Sistema de Gerenciamento de Trios
-- Dono: Iasmin
--
-- Cria as tabelas do caso do trio, vazias.
-- Roda num banco em branco: nada pode depender de tabela criada fora daqui.
-- Minimo 4 tabelas, e uma associativa com atributo proprio.

CREATE TABLE trio (
    id_trio INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_criacao DATE NOT NULL
);

CREATE TABLE integrante (
    id_integrante INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    id_trio INT NOT NULL,
    FOREIGN KEY (id_trio) REFERENCES trio(id_trio)
);

CREATE TABLE atividade (
    id_atividade INT PRIMARY KEY,
    descricao VARCHAR(150) NOT NULL,
    data_atividade DATE NOT NULL
);

CREATE TABLE participacao_trio (
    id_trio INT NOT NULL,
    id_atividade INT NOT NULL,
    pontuacao INT NOT NULL,
    status VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_trio, id_atividade),
    FOREIGN KEY (id_trio) REFERENCES trio(id_trio),
    FOREIGN KEY (id_atividade) REFERENCES atividade(id_atividade)
);
