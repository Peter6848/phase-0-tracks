#CREATE A PROGRAM THAT TAKES A FULL NAME THEN SWAPS THE FIRST AND LAST NAME
 #THEN CHANGES ALL VOWELS TO THE NEXT VOWEL
  #THEN EVERY CONSONANT TO THE NEXT CONSONANT
    #GAVE UP ON KEEPING ANY SPACES....
def spy_name(str)
  #CREATE VARIABLES FOR VOWELS AND CONSONANTS
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  #CHANGE STRING FIRST INTO ARRAY THAT MAKES EACH WORD A VALUE THEN REVERSE THEM. 
  #THEN TURN ARRAY BACK INTO STRING AND DOWNCASE ANY LETTER.
  #THEN TURN STRING BACK INTO ARRAY THAT TAKES EACH INDIVIDUAL CHARACATER AS A VALUE.
  str = str.split(' ').reverse.join.downcase
  str = str.split('')
  #CREATE TEMPORARY VARIABLE STR_NEW TO EQUEL STR THEN CHANGE BUMP EACH 
  #VOWEL AND CONSONANT TO THE NEXT ONE IN LINE.  
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  #TURN ARRAY BACK INTO STRING.
  str_new.join
end

#CREATE EMPTY HASH FOR USER INPUT
names = {}
#CREATE LOOP FOR MULTIPLE NAMES TO CHANGE.  'QUIT EXITS LOOP'
loop do 
  puts "Please type a name you would like to change. (or type 'quit'):"
  input = gets.chomp 
  break if input == 'quit'
  names[input] = spy_name("#{input}")
end 
#PRINT EACH KEY AND ARRAY IN HASH
names.each do |key, array|
  puts "#{key} is #{array}"
end
