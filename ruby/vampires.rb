def age_validator(age, birth)
  if age.to_i == 2017 - birth.to_i
    age_validator = true
  else 
    age_validator = false
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

puts "Would you like to be enrolled in our company's health insurance?  Yes or No"
insurance = gets.chomp



if age_validator = true && (garlic == "yes" || insurance == "yes")
  puts  "Probably not a vampire."
elsif !age_validator && (garlic == "no" || insurance == "no")
  puts "Probably a vampire."
elsif !age_validator && (garlic == "no" && insurance == "no")
  puts "Almost certainly a vampire"   
end