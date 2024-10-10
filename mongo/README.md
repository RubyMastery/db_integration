# Conexção com banco de dados Mongo
Nessa parte foi criado um CRUD no Mongo

## Uso
Você pode apenas seguir o que foi feito nesse tutorial e aplicar no exemplo próprio, mas se quiser testar o exemplo aqui criado segue o passo a passo. 

- Abra o mongo com o comando:
  ``` bash
  mongosh
  ```

- Crie e conecte-se ao banco:
  ``` nosql
  use ecommerce;
  ```
- Crie a tabela onde será feito o crud de jogos:
  ``` nosql
  db.createCollections('product');
  ```
- Insira dados na tabela com o seguinte comando:
  ``` nosql
  var productsToInsert = [
    { name: "Smartphone XYZ", category: { name: "Eletrônicos" } },
    { name: "Notebook ABC", category: { name: "Eletrônicos" } },
    { name: "Camiseta Azul", category: { name: "Roupas" } },
    { name: "Tênis Esportivo", category: { name: "Calçados" } },
    { name: "Livro de Ficção", category: { name: "Livros" } },
    { name: "Fones de Ouvido", category: { name: "Eletrônicos" } }
    ];

    db.products.insertMany(productsToInsert);
  ```


## Testando
 
Agora que já seguiu os passos de criação do banco, pode começar a operações de CRUD, sugiro que você inicie pela a de listar os dados da tabela ***list.rb***
```bash
ruby list.rb