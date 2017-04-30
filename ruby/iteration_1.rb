def print_msg
  count = 10
  puts "Count up to 10!"
  count.times {|i| puts "#{i}"}
  return "All done!"
end
p print_msg

animals = ["cat", "dog", "cow", "chicken"]

my_family = {brother_1: "steven", brother_2: "Eric", sister: "Justine", father: "Steve", mother: "Helen"}

animals.each {|animal| puts "#{animal}"}

my_family.each do |sibling, name|
  puts "#{sibling}: #{name}"
end

animals.map! do |animal|
  puts "I'm a #{animal}!!!"
end