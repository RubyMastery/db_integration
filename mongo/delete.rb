require 'mongo'

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

result = client[:product].delete_one({name: 'Notebook'})
msg = result.deleted_count > 0 ? "Resgistro excluido com sucessp." : "Nenhum documento excluido"

puts msg
