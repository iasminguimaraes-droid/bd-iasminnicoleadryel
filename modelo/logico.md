# Modelo lógico do caso do trio

As tabelas abaixo transformam o caso em uma estrutura relacional. A
especialidade fica separada porque uma mesma especialidade pode ser atribuída a
vários médicos. A consulta é a tabela associativa entre paciente e médico:
suas duas FKs formam a chave primária composta e os demais campos pertencem ao
encontro.

```text
PACIENTE (_id_, nome, nascimento, telefone)
ESPECIALIDADE (_id_, nome, descricao)
MEDICO (_id_, nome, CRM, id_especialidade -> ESPECIALIDADE)
CONSULTA (_id_paciente -> PACIENTE, id_medico -> MEDICO_, data, horario, situacao)
```

Um paciente pode ter várias consultas e um médico pode atender vários
pacientes. Cada consulta aponta para exatamente um paciente e um médico.
