# - From the first letter to the last letter of the string:
#    -Add one
# - If the character is a space:
#  - No changes should be made


def encrypt(str, index)
  str[index] = str[index].next!
end

puts "What string do you want to reverse?"
str = gets.chomp

index = 0

while index < str.length
  encrypt(str, index)
  index +=1 
end
p str 