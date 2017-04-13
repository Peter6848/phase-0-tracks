module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!!!!" + " :)"
  end 
  # we'll put some methods here soon, but this code is fine for now!
end

p Shout.yell_angrily("Aaaah Shit")
p Shout.yelling_happily("OOOOHHHH SSSHIIIT")