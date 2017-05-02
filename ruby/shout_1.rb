module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(words)
#    words + "!!!" + " :)"
#  end

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end

end

class Mom
  include Shout
end

class Dad
  include Shout
end

dad = Dad.new
p dad.yelling_happily("YEEEEHHAAA")

mom = Mom.new
p mom.yell_angrily("DDDDDDAAAAAAMMMNNNN")


#p Shout.yell_angrily("DAAAGNAMIT")
#p Shout.yelling_happily("HOOOO RAAAHHH")
