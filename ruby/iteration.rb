def this_method
  puts "Hello how are you?"

  yield("Sucky")
end
this_method { |response| puts "#{response} ...that's too bad!" }




letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

letters.each do |letter|
  puts letter
end 

puts "After.each call:"
p letters

numberts = {1 => 'one', 2 => 'two', 3 => 'three'}