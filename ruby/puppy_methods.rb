class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(number)
    number.times do puts "Bark!"
    end
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(human_age)
    if human_age < 0 
      puts "Age must be a positive number"
    elsif human_age == 1
      dog = human_age * 15
    elsif human_age == 2
      dog = human_age * 12
    else
      dog = 24 + (human_age - 2) * 4
    end
  end
  def trick(type)
    puts "I did a #{type}!"
  end
end

#puppy = Puppy.new
#puts puppy.fetch("bone")
#puts puppy.speak(5)
#puts puppy.roll_over
#puts puppy.dog_years(10)
#puts puppy.trick("jump")

class Frog
  def initialize
    puts "I'm a frog"
  end 
  def jump
    puts "I jumped to the next leaf!"
  end
  def eat(food)
    puts "I ate a #{food}.  And it was delicious!"
  end 
end


index = 0
while index < 50
  frog = Frog.new
  frogs = []
  frogs << frog 
  frogs.each do 
    frog.jump
    frog.eat("fly")
    end
  index += 1
end

frogs 













