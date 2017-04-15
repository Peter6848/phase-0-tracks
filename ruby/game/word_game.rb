


#
#USER TWO GUESSES THE WORD ONE CHARACTER AT A TIME
#
#THE AMOUNT OF GUESSES EQUALS THE WORD LENGTH GIVEN BY USER ONE
#
#REPEATED GUESSES DON'T COUNT AS A GUESS
#
#CORRECT CHARACTERS ARE PRINTED OUT IN ORDER OF PLACEMENT IN WORD
#
#IF USER TWO GUESSES WORD CORRECTLY THEY GET A CONGRATS
#
#IF USER TWO GUESSES INCORRECTLY THEY GET A TAUNT
#WORD GUESSING GAME: 

#GAME CLASS
class WordGame
  attr_reader :get_word
  attr_reader :guess_count 
  attr_reader :game_over

  def initialize
    @get_word = "hello"
    @guess_count = 0
    @game_over = false
  end

  def secret_word(word)
    word.length
  end

  def hide_word(word)


  end 

  def guess_letter
  end

  def print_letter
  end 

#USER ONE INPUTS A WORD
end

#USER INTERFACE

puts "Lets play the guessing game!"
game = WordGame.new

puts "Player one please give a word!"
word = gets.chomp 











