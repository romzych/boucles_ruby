def ask_first_name
    print "fraté c'est quoi ton nom ? "
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
    return "Bonjour, #{first_name}!"
end

first_name = ask_first_name
puts say_hello(first_name)