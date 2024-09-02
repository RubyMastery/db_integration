# Conexção com banco de dados relacional
Nessa parte foi criado um CRUD no PostgreSql

## Uso
Você pode apenas seguir o que foi feito nesse tutorial e aplicar no exemplo próprio, mas se quiser testar o exemplo aqui criado segue o passo a passo.

- Crie o banco de dados:
  ``` sql
  create database game_vault;
  ```
- Conecte-se ao banco criado:
  ``` sql
  \c game_vault;
  ```
- Crie a tabela onde será feito o crud de jogos:
  ``` sql
  CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    year INT,
    score DOUBLE PRECISION
  );
  ```
- Insira dados na tabela com o seguinte comando:
  ``` sql
  INSERT INTO games (name, year, score) VALUES
    ('Fortnite', 2017, 8.0),
    ('Among Us', 2018, 9.0),
    ('Cyberpunk 2077', 2020, 7.5),
    ('Genshin Impact', 2020, 8.5),
    ('Call of Duty: Warzone', 2020, 8.8),
    ('Assassin''s Creed Valhalla', 2020, 8.3),
    ('Valorant', 2020, 9.2);
  ```
Agora que já seguiu os passos de uso, pode começar a operações de CRUD, sugiro que você inicie pela a de listar os dados da tabela ***listando_dados_da_tabela.rb***
```bash
ruby listando_dados_da_tabela.rb