require 'pg'

conn = PG.connect(
  dbname: 'game_vault',
  user: 'sergio',
  password: '123456',
  host: 'localhost',
  port: 5432
)

puts "Quantos jogos você deseja salvar?"
number_games = gets.to_i

number_games.times do |i|
  puts "digite o nome do #{i+1}º jogo a ser cadastrado"
  game_name = gets.chomp
  puts "digite o ano de laçamento do #{i+1}º jogo a ser cadastrado"
  year = gets.to_i
  puts "digite a nota do #{i+1}º jogo a ser cadastrado"
  score = gets.to_f

  insert_query = "INSERT INTO games(name, year, score) VALUES ('#{game_name}', '#{year}', '#{score}')"

  conn.exec(insert_query)
end

puts "Registros inseridos com sucesso!"

conn.close