def ask_first_name
    print "fraté c'est quoi ton nom ? "
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
    puts "Bonjour, #{first_name}!"
end

first_name = ask_first_name
say_hello(first_name)