class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender
  def initialize(genders, ethnicity)
    p "Initializing Santa instance..."
    @genders = genders
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

  def celebrate_birthday
    @age = @age + rand(141)
  end 

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end
end 


genders = ["female", "male", "half-n-half", "bi-gender", "gender fluid"]
ethnicities = ["Black", "Latino", "White", "Asian", "Mongolian"]

index = 0
while index < 100
  #santas = []
  santa = Santa.new(genders.sample, ethnicities.sample)
  #santas << santa 
  #santas.each do 
  santa.eat_milk_and_cookies("chocolate chip cookie")
  santa.speak
  santa.get_mad_at("Dasher")
  santa.celebrate_birthday
  santa.gender = "So fly"
  santa.age
  santa.ethnicity
  puts "I'm a #{genders.sample} and #{ethnicities.sample}!"
    #end
  index += 1
end








