# Ton programme sera contenu dans un fichier lib/02_password.rb.

# Ramsès II t'a recommandé auprès d'Edward Snowden pour coder un programme de cybersécurité. Le but est de faire un écran de sécurité qui demande à l'utilisateur de définir un mot de passe, et un autre qui lui demande de le saisir.

# Tant que l'utilisateur ne donne pas le bon mot de passe, le programme le lui redemande.
# Si l'utilisateur rentre le bon mot de passe, il accède à un espace secret.
# -------------------------------------------------------------------------
# Le programme va se décomposer en trois parties :

# une partie signup, demandant à l'utilisateur de définir un mot de passe
# une partie login, demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
# une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes de la NSA

def signup # fonction signup
  puts "définis un mot de passe" # definis le mdp
  print ">... " #  (thon123)
  password = gets.chomp # password = thon123 enregistre
end

def login(pass) # fonction login 
  puts "rentré le mot de passe"
  print ">... "
  input_login = gets.chomp # demandant à l'utilisateur de rentrer son mdp
  until pass == input_login # boucle de vérification
    puts "erreur de saisie TRY AGAIN noob" # troll l'utilisateur
    print ">... "
    input_login = gets.chomp
  end
end

def welcome_screen
  puts " "
  puts "Bienvenue dans ta zone secrete"
  puts "Ta femme te trompe désolé..."
end

# reponselogin = thon12
# untill password == reponse login
#   rentre ton mdp
#   > ... (thon12)
#   >... (thon123)
# if password == login
#   welcome_screen()
# 

def perform
  login(signup) # appel login("valeur == (retour de signup)")
  welcome_screen
end

perform()
