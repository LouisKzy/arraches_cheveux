# dire bienvenue et demander combien d'étage on veux dans une boucle


def welcome
  puts "Bienvenue dans la pyramide qui décourage le developpeur en herbe"
  print "Combien d'étages doit faire ta pyramide ? >.. "
  floor_number = gets.chomp.to_i
  return floor_number
end

# afficher une première moitié haute de pyramide
def pyramid_up(floor_number)
  etage = welcome 
  actual_floor = 0
  while actual_floor < (floor_number - 1)
    space_begin = " " * (floor_number - actual_floor) # gère les espaces au début 
    hashtag = "#" * actual_floor # gère les "#" affiché
    puts  space_begin + hashtag + "#" + hashtag # affiche la pyramide à "l'envers"
    actual_floor += 1 # incrémente les étage de 1
  end
  return actual_floor
end

# affiché une deuxième moitié mais partant de la base de la pyramide d d'avant ( petit génie)
def pyramid_down(floor_number, start2)
  nb_spaces = 1
  until floor_number <= 0  #tant que 0 < 10  boucle
    spaces_d = " " * nb_spaces    # 1(" " * 0 )== ""  // 2(" " * 1) == " " // 3(" "*2)== "  "
    hashtag = "#" *  (floor_number - 1)   #  1("#"*10/2)==(5+1) == 6 // 2("#" * 9/2)
    puts spaces_d + hashtag + "#" + hashtag   # affiche la pyramide à "l'envers" "          ##########"
    nb_spaces += 1 # décrémente les étage de 1
    floor_number -= 1
  end
end

def full_pyramid
  call1 = welcome 
  call2 = pyr_up(call)
  pyramid_down(call1, call2)
end

def perform
  full_pyramid()
end

call1 = welcome 
pyramide_up(call1)
#s'arracher les cheveux a ce que cela marche. (dédicace aux chauves)
perform()