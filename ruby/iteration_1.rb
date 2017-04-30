def print_msg
  count = 10
  puts "Count up to 10!"
  count.times {|i| puts "#{i}"}
  return "All done!"
end
p print_msg

animals = ["cat", "dog", "cow", "chicken"]

my_family = {brother_1: "steven", brother_2: "Eric", sister: "Justine", father: "Steve", mother: "Helen"}

p animals
animals.each {|animal| puts "#{animal}"}
p animals

p my_family
my_family.each do |sibling, name|
  puts "#{sibling}: #{name}"
end
p my_family

p animals
animals.map! do |animal|
  puts "I'm a #{animal}!!!"
end
p animals

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
