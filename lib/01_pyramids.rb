def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (1 mini - 25 max) "
    print ">"
    nbr_height = gets.to_i
    while nbr_height < 1 || nbr_height > 25
        puts "prend un chiffre entre 1 et 25 fraté"
        print ">"
        nbr_height = gets.to_i
    end
    i = 1
    line = 0
    puts "Voici la pyramide :"
    while i <= nbr_height
        line = "#" * i
        puts line
        i = i + 1
    end
end

def full_pyramid

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
nbr_pyra = gets.to_i
while nbr_pyra < 1 || nbr_pyra > 25
    puts "il faut un nombre entre 1 et 25"
    nbr_pyra = gets.to_i
end
i = 0
while i < nbr_pyra
    print ("#" * i).rjust(nbr_pyra)
    puts "#" * (i + 1)
    i = i + 1
end

end

def wtf_pyramid

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
nbr_pyra = gets.to_i
while nbr_pyra % 2 == 0 || nbr_pyra < 1 || nbr_pyra > 25
    puts "nombre non conforme il faut entre 1 et 25 et impaire"
    nbr_pyra = gets.to_i
end
i = 1
until i ==  nbr_pyra / 2 + 1
    print ("#" * i).rjust(nbr_pyra / 2 + 1)
    puts "#" * (i - 1)
    i = i + 1
end

until i == 0
    print ("#" * i).rjust(nbr_pyra / 2 + 1)
    puts "#" * (i - 1)
    i = i - 1
end

end

def perform
    half_pyramid
    full_pyramid
    wtf_pyramid
end

perform