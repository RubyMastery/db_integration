require 'pg'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '123456',
    host: 'localhost',
    port: 5432
  )

id = gets.to_i

new_name = gets
new_year = gets.to_i
new_score = gets.to_f

update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, score = #{score} WHERE id = #{id}"

conn.exec(update_query)

puts "Registro atualizado com sucesso!"

conn.close