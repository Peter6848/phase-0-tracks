def age_validator(age, birth)
  if age.to_i == 2017 - birth.to_i
    age_validator = true
  else 
    age_validator = false
  end
end

number_of_employees = 0

puts "How many employess will be processed?"
number_of_employees = gets.to_i 

for i in 0...number_of_employees

  valid_input = false 

  until valid_input
    puts "Please list all known allergies. When finshed please type: done"
    allergies = gets.chomp 
    if allergies == "done"
      puts "Thank you."
      valid_input = true 
    elsif allergies == "sunshine"
      puts "Probably a vampire."
      valid_input = true 
    end
  end 
  
  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  age = gets.to_i
  puts "What year were you born?"
  birth = gets.to_i
  age_validator(age, birth)
  
  puts "We serve garlic bread for lunch.  Would you like some?  Yes or No"
  garlic = gets.chomp 
  if garlic == "yes"
    garlic = true 
  else
    garlic = false 
  end 
  
  puts "Would you like to be enrolled in our company's health insurance?  Yes or No"
  insurance = gets.chomp 
  if insurance == "yes"
    insurance = true
  else
    insurance = false 
  end
  
  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  elsif (age_validator(age, birth) == true && garlic == true)  || (age_validator(age, birth) && insurance == true) 
    puts  "Probably not a vampire."
  elsif age_validator(age, birth) == false && garlic == false && insurance == false
    puts "Almost certainly a vampire"  
  elsif (age_validator(age, birth) == false && garlic == false) || (age_validator(age, birth) == false && insurance == false) 
    puts "Probably a vampire."
  else 
    puts "Results inconclusive"
  end
end
  