require 'pg'

conn = PG.connect(
  dbname: 'game_vault',
  user: 'sergio',
  password: '123456',
  host: 'localhost',
  port: 5432
)

puts "Digite o id do game que você quer deletar"
id = gets.to_i

delete_query = "DELETE FROM games WHERE id = #{id}"

conn.exec(delete_query)

puts "Registro excluido com sucesso!"

conn.close