

niveau = 10
def welcome
  puts " Bienvenue dans le jeu dans le jeux de la pyramide !"
  puts " "
  puts "Vous allez lancé des dès pour monter les mchs"
  puts " "
  puts "Les jets de dès 5 et 6 vous font montez"
  puts "Les jets de dès 2, 3 ou 4 ne font rien"
  puts "Les jets de dès 1 vont font redescendre d'un niveau"
  puts " "
end


def jeux(mch)
  number_roll = 0
  while mch < 10 do jet_de_des = rand(1..6)
    number_roll += 1
    if jet_de_des == 5 or jet_de_des ==6
      mch += 1
      puts "Jet de dès: #{jet_de_des} ! Tu monte sur la mch#{mch}."
      puts " "
    elsif jet_de_des == 1 and mch != 0
      mch -= 1  
      puts "Jet de dès: #{jet_de_des} ! Descend sur la mch #{mch}."
      puts " "
    else
      puts "Jet de dès: #{jet_de_des} rien ne se passe vous etes toujours sur la mch #{mch}."
      puts " "
    end
  end
  return number_roll 
end


def average
  call_number = []
  marche = 0
  100.times do
    call_number << jeux(marche)
  end
  calculation = call_number.sum / 100
  puts "Votre score moyen est : #{calculation}"
end

def perform
  welcome()
  average()
end
# 

perform()
# stock

#
#
#
#


