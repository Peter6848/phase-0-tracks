#PSEUDOCODE FOR SPY NAME

# - For each spy 
 # - Ask for the spy's real name
 # - Take spy's real name
 # - Swap the first and last name
 # - Change all of the vowels to the next vowel
 # - Change all consonants to the next consonant
 # - Leave any spaces as is

def next_vowel(string)
  vowels = %w[a, e, i, o, u]
  string = string.split(' ').reverse.join
  string = string.downcase.chars
  new_string = string.map do |char|
    if vowels.include? char
      vowels.rotate(1)[vowels.index(char)]
      new_string
    end
  end
  p new_string.join 
  
end 

p next_vowel("Hi there")

#
#p vowels
#p consonants


