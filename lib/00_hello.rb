
def say_hello(prenom)
  puts "Bonjour, #{prenom}"
end

def ask_first_name
  print "Quel est ton prénom ? > ... "
  first_n = gets.chomp
  return first_n
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform()