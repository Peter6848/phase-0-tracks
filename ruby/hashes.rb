#CREATE PROGRAM THAT TAKES INPUT OF CLIENTS: STRINGS, INTEGARS, BOOLEANS.
#USE HASH TO MAKE KEYS AND THEIR REPRESENTED VALUE.
#Program should ...

#Create hash with keys but leave values empty.
interior_design = {
  name: "",
  age: [],
  children: [],
  design: []
}
#Prompt the designer/user for all of this information.
#And convert any user input to the appropriate data type.  Then shovel input
#into correct values for interior_design hash.
puts "What is the clients full name?"
name = gets.chomp.capitalize 
interior_design[:name] << name
puts "What is the clients age?"
age = gets.to_i 
interior_design[:age] << age
puts "Number of children?"
children = gets.to_i
interior_design[:children] << children
puts "Does client like modern design?"
design = gets.chomp 
if design == "yes"
  design = true
elsif design == "no"
  design = false
end 
interior_design[:design] << design 
#Print hash with new values
p interior_design
#Ask user if information is correct.  If correct skip to return info.
#If incorrect allow user to change one value.
puts "Is this information correct?"
response = gets.chomp
if response == "yes"
  puts "Thank you"
elsif response == "no"
  puts "Please list which item you'd like to change: \n name\n age\n children\n design"
changed_item = gets.chomp
end
if changed_item == "name"
  name = gets.chomp.capitalize
  interior_design[:name] = name
elsif changed_item == "age"
  age = gets.to_i 
  interior_design[:age] = age 
elsif changed_item == "children"
  children = gets.to_i
  interior_design[:children] = children
elsif changed_item == "design"
  design = gets.chomp 
  if design == "yes"
  design = true
  elsif design == "no"
  design = false
  interior_design[:design] = design
  end 
end 
#Print Keys and Values in user friendly version.
puts "Your client info: \n Name: #{interior_design[:name]}\n Age: #{interior_design[:age]}\n Children: #{interior_design[:children]}\n Likes moder design: #{interior_design[:design]}"

  


 
  
#puts "Here is the content that was in the hash: "
#interior_design do |key, value|
#puts "#{key}, #{value}"
#end
 
  #Print the hash back out to the screen when the designer has answered all of the questions.

  #Give the user the opportunity to update a key (no need to loop, once is fine). 
  #After all, sometimes users make mistakes! If the designer says "none", skip it. 
  #But if the designer enters "decor_theme" (for example), your program should ask 
  #for a new value and update the :decor_theme key. 
  #(Hint: Strings have methods that will turn them into symbols, 
  #which would be quite handy here.) You can assume the user will correctly input 
  #a key that exists in your hash -- no need to handle user errors.

  #Print the latest version of the hash, and exit the program.

