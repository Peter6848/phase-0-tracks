class Santa
  def speak
    p "Ho,ho,ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    p "That was a good #{type}!"
  end

  def initialize
    p "Initializing Santa instance..."
  end 
end 

Bad_Santa = Santa.new