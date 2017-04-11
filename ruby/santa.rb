class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
      "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 

  def speak
    p "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    p "That was a good #{type}!"
  end
end 
  
santas = []
genders = ["female", "male", "female", "bigender", "gender fluid"]
ethnicities = ["black", "Latino", "white", "Asian", "Mongolian"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

santas.each do |santa|
  santa.eat_milk_and_cookies("chocolate chip cookie")
  
  
end
