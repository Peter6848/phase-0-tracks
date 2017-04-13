module Shout
  #def self.yell_angrily(words)
  #  words + "!!!" + " :("
  #end
  #def self.yelling_happily(words)
  #  words + "!!!!" + " :)"
  #end 
  # we'll put some methods here soon, but this code is fine for now!
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!!" + " :)"
  end
end
#p Shout.yell_angrily("Aaaah Shit")
#p Shout.yelling_happily("OOOOHHHH SSSHIIIT")
class DBC_instructor
  include Shout
end

class My_wife
  include Shout
end

dbc_instructor = DBC_instructor.new
puts dbc_instructor.yell_angrily("You stupid idiot you forgot to make a feature branch")

my_wife = My_wife.new
puts my_wife.yelling_happily("I would never yell at you husband")