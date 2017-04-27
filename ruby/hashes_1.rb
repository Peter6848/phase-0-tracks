#PSEUDOCODE FOR INTERIOR DESIGNER METHOD
 # - For each client of designer
  # - Take all info of client
  # - Convert info to keys and values within hash  
  # - Keys should be symbols unless string is needed
  # - Print the hash when all answers of questions are filled
  # - Give option to update any key/value once
   # - If no update needed allow user to type 'done' to skip 
  # - Print updated hash and exit program

#METHOD FOR INTERIOR DESIGNER

puts "How many client sheets would you like to fill out today?"
amount = gets.to_i 

for i in 1..amount
  client_info = {}

  puts "What is clients name:"
  name = gets.chomp! 
  client_info[:name] = name 

  puts "What is clients age:"
  age = gets.to_i
  client_info[:age] = age

  puts "How many children does client have:"
  children = gets.to_i
  client_info[:children] = children 

  puts "Does client like light shades:" 
  light_shade = gets.chomp.downcase 
  if light_shade == "yes"
    client_info[:light_shade] = true
  else
    client_info[:light_shade] = false 
  end 

  client_info.each do |key, value|
    puts "#{key}: #{value}"  
    end 

  puts "Update info?  If yes please type which item you would like to change otherwise type 'done'."
  input = gets.chomp
  if input == 'done' 
    break 
  elsif client_info.include? input.to_sym 
    puts "What is the new value?"
    value = gets.chomp 
    client_info[input.to_sym] = value 
  end 

   client_info.each do |key, value|
    puts "#{key}: #{value}"  
    end 

end  