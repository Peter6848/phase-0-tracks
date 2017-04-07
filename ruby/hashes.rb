#CREATE PROGRAM THAT TAKES INPUT OF CLIENTS: STRINGS, INTEGARS, BOOLEANS.
#USE HASH TO MAKE KEYS AND THEIR REPRESENTED VALUE.
#Program should ...

#Create hash with keys but leave values empty.
interior_design = {
  name: "",
  age: "".to_i,
  children: "".to_i, 
  design: ""
}

#Prompt the designer/user for all of this information.
#And convert any user input to the appropriate data type.
puts "What is the clients full name?"
name = gets.chomp
name << interior_design[:name]
puts "What is the clients age?"
age = gets.to_i
age << interior_design[:age]
puts "Number of children?"
children = gets.to_i
children << interior_design[:children]
puts "Does client like modern design?"
design = gets.chomp 
if design == "yes"
  design = true
else 
  false
end 
design << interior_design[:design]


 
  
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

