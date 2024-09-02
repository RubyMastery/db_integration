require 'pg'

conn = PG.connect(dbname: 'game_vault',
  user: 'sergio',
  password: '123456',
  host: 'localhost',
  port: 5432
)

puts "digite o id do jogo que você busca"
id = gets.to_i

query = "SELECT * FROM games WHERE id = #{id}"

result = conn.exec(query)

if result.ntuples == 1
  puts "
    Jogo encontrado
    ID: #{result[0]['id']}
    Name: #{result[0]['name']}
    Score: #{result[0]['score']}
  "
else
  puts "Nenhum resultado encontrado para o ID #{id}"
end

conn.close