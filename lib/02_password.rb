def signup

puts "Bonjour utilisateur, tappez votre mot de passe"
print ">"
mdp = gets.chomp
return(mdp)

end

def login(mdp)

puts "Entrez votre mot de passe pour acceder a la suite"
print ">"
try_mdp = gets.chomp

while try_mdp != mdp
    puts "le mot de passe n'est pas bon, recomencez"
    print ">"
    try_mdp = gets.chomp
end

end

def welcome_screen

    puts "***Bienvenu dans ta zone secrete voici tes informatoin secrete:***"
    puts "***t'a plus de thune fraté***"

end


def perform

mdp = signup
login(mdp)
welcome_screen

end

perform