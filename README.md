# Liquibase

Breve explicação sobre o liquibase.

###O quê é?
É uma biblioteca independente de banco de dados, que serve para gerenciar e aplicar alterações em um determinado banco.

###Conceitos

- Changelog File
- ChangeSet
- Changelog Database
- Changelog Database Lock

####1. ChangeLog File
- É o arquivo que possui os comandos para a manipulação do banco de dados.

####2. ChangeSet 
- É o responsável pela manipulação do banco, chageSets são as unidades de um changelog file. Cada changeSet possui um trecho de comando,
sendo informado o autor e o id. Pode ser em sql, json, xml, etc. No final, deve haver diversos changeSets formando um changeLog File.

####3. ChangeLog Database
- É o banco de dados de Log, onde armazena as informações de histórico. Armazena id, autor, data de execução, md5sum, etc. É o log de 
changeSets, cada um ocupa uma linha na tabela. 
  
####4. ChangeLog Database Lock
- É o banco de log que impede algum changeSet de outro autor, ser executado antes de um changeSet, que está em execução.

###Alguns Comandos
- ####update
    Faz um update no banco de dados de acordo com o ChangeLog e a tabela de log.
    >liquibase update
- ####updateCount 
    Faz um update no banco de dados de acordo com o ChangeLog e a tabela de log, mas até um certo ponto para frente, de acordo
com o valor especificado.
    >liquibase updateCount valor
  
  (trocar a palavra valor por um valor inteiro desejado)
- ####updateToTag
    Faz um update no banco de dados de acordo com o ChangeLog e a tabela de log, mas somente até um changeSet específico,
localizado pela tag.
    >liquibase updateToTag tag
  
  (trocar tag por uma tag desejada)
- ####rollback
    Faz um rollback no banco até uma tag específica.
    >liquibase rollback tag
  
  (trocar tag por uma tag desejada)




