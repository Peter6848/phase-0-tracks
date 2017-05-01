#PSEUDOCODE FOR SPY NAME

# - For each spy 
 # - Ask for the spy's real name
 # - Take spy's real name
 # - Swap the first and last name
 # - Change all of the vowels to the next vowel
 # - Change all consonants to the next consonant
 # - Leave any spaces as is

def spy_name(string)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  new_string = string.split(' ').reverse.join
  new_string = new_string.downcase.split('')
  new_string.map! do |char|
    if vowels.include? char 
      #new_string(char) = vowles.rotate(1)
      vowels.rotate(1)[vowels.index(char)]
    elsif consonants.include? char 
      consonants.rotate(1)[consonants.index(char)]
    else
      char 
    end
  end
  new_string.join
end 

#CREATE EMPTY HASH FOR USER INPUT
names = {}
#CREATE LOOP FOR MULTIPLE NAMES TO CHANGE.  'QUIT EXITS LOOP'
valid_input = false

until valid_input
  puts "Please type a name you would like to change. (or type 'quit'):"
  input = gets.chomp 
  if input == 'quit'
    valid_input = true 
  elsif 
  names[input] = spy_name("#{input}")
  end 
end
#PRINT EACH KEY AND ARRAY IN HASH
names.each do |key, array|
  puts "#{key} is #{array}"
end


