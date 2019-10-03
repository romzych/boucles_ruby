def jump(stairs)

puts "vous avez fait 5 ou 6, vous montez d'un marche"
stairs = stairs + 1
puts "vous etes a l'etage #{stairs}"

return stairs

end

def nothing(stairs)

puts "vous avez fait 2, 3 ou 4 rien ne ce passe"
puts "vous etes a l'etage #{stairs}"

end


def drop(stairs)

puts "vous avez fait 1, vous descendez d'une marche"
if stairs == 0 
    puts "vous etes a l'etage 0 vous ne pouvez pas descendre"
else
    stairs = stairs - 1
    puts "vous etes a l'etage #{stairs}"
end

return stairs

end


def play

stairs = 0
dice = 0

while stairs < 10
    print "Appuyez sur Entrer pour lancer le dé"
    gets
    dice = rand 1..6
    if dice == 1
        stairs = drop(stairs)
    elsif dice == 2 || dice == 3 || dice == 4
        nothing(stairs)
    elsif dice == 5 || dice == 6
        stairs = jump(stairs)
    end
end

puts "***Bravo vous avez gagné***"
end



def average_finish_time

coup = 0

100.times do

    stairs = 0
    dice = 0
        
    while stairs < 10
        dice = rand 1..6
        if dice == 1
            if stairs != 0
                stairs = stairs - 1
            end
            coup = coup + 1
        elsif dice == 2 || dice == 3 || dice == 4
            coup = coup + 1
        elsif dice == 5 || dice == 6
            stairs = stairs + 1
            coup = coup + 1
        end
    end

end

print "il faut en moyenne "
puts coup / 100

end


puts "******NOMBRE DE COUPS MOYEN******" 
average_finish_time
puts "******DEBBUT DU JEU******"
play