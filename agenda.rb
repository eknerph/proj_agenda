# Adicionar, Editar e remover Contato;
# Os Contatos terão as seguintes informações: nome e telefone;
# Poderemos ver todos os contatos registrados ou somente um contato;

@agenda = [
  {nome: "Maria", telefone: "21 9999-3333"}
  {nome: "Julice", telefone: "21 98567-5580"}
]

def todos_contatos
  @ agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
  puts "-----------------------------------------"
end

def adicionar_contato
  print "Nome:"
  nome = gets.chomp
  print "Telefone: "
  telefone = gets.chomp

loop do

puts "1. Contatos\n2. Adicinar Contato\n3. Editar Contato\n4. Remover Contato\n5. Sair\n"
  codigo = gets.chomp.to_i
  
  case
  when codigo == 0
    puts "Até mais!"
    break
  when codigo == 1    
    todos_contatos   
  when codigo == 2
    adicinar_contato
  end

end
