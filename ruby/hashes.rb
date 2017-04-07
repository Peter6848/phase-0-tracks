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


