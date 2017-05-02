class Santa
  attr_accessor :ethnicity, :gender 
  attr_reader :age

  def initialize(gender, ethnicity)
    "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def speak
    "Ho, ho, ho!  Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    @age = rand(140)
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.push(name)
  end
end

genders = ["male", "female", "bigender", "unknown", "cross gender", "something new gender", "i don't even know gender"]
ethnicities = ["black", "white", "asian", "german", "irish", "mutt"]

for i in 1..100 
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.speak
  santa.eat_milk_and_cookies("Chocolate Chip")
  santa.celebrate_birthday
  santa.get_mad_at("Dasher")
end







