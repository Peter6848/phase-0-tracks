class Santa
  def speak
    p "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    p "That was a good #{type}!"
  end

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
      "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 
end 

Bad_Santa = Santa.new