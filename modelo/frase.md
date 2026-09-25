# O caso do trio

**Integrantes:** Iasmin G. Nicole C. Adryel D.

**Turma:** 1°C - desenvolvimento de sistemas

---

## Em uma frase

a clínica precisa saber quais pacientes são atendidos por quais médicos, em quais datas
e horários, e qual é a situação de cada consulta.

## As entidades

- PACIENTE: id, nome, nascimento, telefone.
- MÉDICO: id, nome, CRM, especialidade.
- ESPECIALIDADE: id, nome, descrição.
- CONSULTA: data, horário, situação.

## O N:N com atributo próprio

Qual é o par de entidades que se cruza muitos-para-muitos, e qual dado nasce
**do encontro** entre elas (e não de nenhum dos dois lados)?

- **PACIENTE** e **MÉDICO**, pois um paciente pode consultar com vários médicos e um médico pode atender vários pacientes. o encontro entre eles é a **consulta**, que possui os atributos **data**, **horário** e **situação**
