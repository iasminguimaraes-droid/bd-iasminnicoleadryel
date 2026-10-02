# Ajustes do professor Diego

O caso da clínica estava bem escolhido e a frase já identificava as quatro
entidades e o N:N entre PACIENTE e MÉDICO. O problema era de entrega e de
precisão: faltavam o modelo lógico e os dois arquivos do diagrama, e
“especialidade” aparecia no médico sem deixar claro que era uma referência à
tabela ESPECIALIDADE.

Agora o modelo está fechado nos quatro arquivos exigidos. `MEDICO` aponta para
`ESPECIALIDADE` por `id_especialidade`. `CONSULTA` resolve o N:N entre
`PACIENTE` e `MEDICO`, guarda `data`, `horario` e `situacao`, e usa as duas FKs
como chave primária composta. O `.drawio` é a fonte editável e o `.png` é a
exportação para conferência rápida.

O check dos exercícios funciona por contrato, não por opinião: ele procura cada
pasta individual e os arquivos `aulaNN.sql`, separa os blocos pelos marcadores
`-- ex1`, `-- ex2` etc. e executa cada bloco em um banco novo. Se o bloco não
tiver SQL, aparece `vazio`; se o SQLite não conseguir executar, aparece `ERRO`
com a mensagem; se executar, aparece `rodou`. Isso confirma que o arquivo é
entregável e executável, mas não decide se a resposta atende ao enunciado.

Depois da reorganização, `exercicios/iasmin/` mantém exatamente o SQL que já
existia. `exercicios/nicole/` e `exercicios/adryel/` recebem o template
individual, e `SEU-NOME` é removida para não ser confundida com uma entrega.
