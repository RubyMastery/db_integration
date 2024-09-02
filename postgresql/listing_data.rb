require 'pg'

conn = PG.connect(
  dbname: 'game_vault',
  user: 'sergio',
  password: '123456',
  host: 'localhost',
  port: 5432
)

query = "SELECT * FROM games"

begin
  result = conn.exec(query)

  if result.any?
    result.each do |row|
      puts "Id: #{row['id']} - Nome: #{row['name']} - Ano: #{row['year']} - Score: #{'score'}"
    end
  else
    puts "Ainda não há jogos cadastrados!"
  end

ensure
  conn.close if conn
end 