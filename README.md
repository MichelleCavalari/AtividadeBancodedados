#  Sensoriamento em Agricultura - Banco de Dados

Este projeto foi desenvolvido como parte da atividade prática da disciplina de Banco de Dados na FIAP, com foco em sensoriamento aplicado à agricultura digital. O sistema modela o armazenamento de dados de sensores instalados em plantações, permitindo o monitoramento de variáveis como umidade, pH, fósforo e potássio do solo.

## Estrutura do Banco de Dados

O modelo foi desenvolvido para o **Oracle Database 11g** e contém as seguintes tabelas:

###  Tabelas

- **CULTURA**
  - ID_CULTURA *(PK)*
  - NOME_CULTURA
  - EPOCA_PLANTIO

- **SENSOR**
  - ID_SENSOR *(PK)*
  - TIPO_SENSOR
  - ID_CULTURA *(FK)*

- **LEITURA**
  - ID_LEITURA *(PK composto com ID_SENSOR)*
  - ID_SENSOR *(PK composto com ID_LEITURA, FK para SENSOR)*
  - DATA_HORA
  - UMIDADE
  - PH
  - FOSFORO
  - POTASSIO
  - CULTURA_ID_CULTURA *(FK para CULTURA)*

- **REGISTRAv2**
  - CULTURA_ID_CULTURA *(PK composto, FK)*
  - SENSOR_ID_SENSOR *(PK composto, FK)*

## Relacionamentos

- Cada **Sensor** está vinculado a uma **Cultura**.
- Cada **Leitura** está associada a um **Sensor** e a uma **Cultura**.
- A tabela **REGISTRAv2** representa o relacionamento N:N entre sensores e culturas.

##  Como executar

1. Abra o **Oracle SQL Developer**.
2. Conecte-se ao seu banco Oracle.
3. Copie o conteúdo do arquivo `.sql`.
4. Execute o script para criar as tabelas e restrições no seu schema.

## Requisitos

- Oracle Database 11g ou superior
- Oracle SQL Developer

##  Em desenvolvimento

Futuramente, este projeto poderá ser integrado com aplicações Python para inserção automatizada dos dados dos sensores.

---

 Desenvolvido por Michelle Cavalari — [GitHub](https://github.com/MichelleCavalari)


