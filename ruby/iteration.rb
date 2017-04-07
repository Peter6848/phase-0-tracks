#A METHOD THAT TAKES A BLOCK
def this_method
  puts "Hello how are you?"
  yield("Sucky")
end
this_method { |response| puts "#{response} ...that's too bad!" }




#AN ARRAY
cereal = ['Frosted Flakes', 'Cheerios', 'Pops', 'Wheaties']

#A HASH
animal_babies = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid"
}
#USING METHODS TO ITERATE THROUGH THE ARRAY AND HASH
cereal.each do |i| 
    puts "I like to eat #{i} for breakfast."
end

cereal.map! do |i|
    puts i.upcase
end

animal_babies.each do |parent, baby|
    puts "A #{parent} has a #{baby}."
end

#NEW ARRAY USING NEW FOUND METHODS
DTT = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

DTT.drop_while do |i| 
    i < 5
end 

DTT.keep_if do |i|
    i < 5
end

DTT.select { |i|
    i.even?
}

DTT.delete_if do |i|
    i >= 8
end

#HASH USING NEW FOUND METHODS
DTT = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid",
    "Kangaroo" => "Joey"
}

DTT.delete_if { |animal, baby| 
    animal >= "Goat"
}

p DTT

DTT.keep_if { |animal, baby|
    baby == "Kid"
}

p DTT

DTT.reject { |animal, baby|
    animal < "Dog"
}

p DTT