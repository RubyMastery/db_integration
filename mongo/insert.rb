require 'mongo'

#Configgurando o BD
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

result = client[:product].insert_one({
  'name'=> 'Notebook',
  'category'=>  {
    'name'=> 'Eletronicos'
  }
})

if result.successful?
  puts("Dados inseridos com sucesso. Id: #{result.inserted_id}")
else
  puts("Falha ao inserir ")
end
