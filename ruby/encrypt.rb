

def encrypt(str)
  result = ""
  for i in 0..(str.length-1)
    if str[i] == " "
      result << " "
    elsif str[i] == "z"
      result << "a"
    else 
      result << str[i].next!
    end 
  end
  result
end 
encrypt("zebras suck")
#encrypt accepts a string
# iterate over the string characters
# if the character is a letter, advance it to the next letter in the alphabet
#if the letter is a 'z', change it to an 'a'
#if the character is a space, keep the space
# return the modified string

def decrypt(str)
result = ""
  for i in 0..(str.length-1)
    if str[i] == " "
      result << " "
    elsif str[i] == "a"
      result << "z"
    else 
      result << prev(str[i])
    end
  end
  result
end

def prev(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  index = letters.index(str)
  letters[index-1]
end