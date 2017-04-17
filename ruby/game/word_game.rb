


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
  attr_accessor :get_word
  attr_reader :guess_count 
  attr_reader :game_over
  
  def initialize(word)
    @get_word = word.downcase
    @guess_count = 0
    @game_over = false
    @hidden_word = "_" * word.length
    @hidden_word = @hidden_word.split("")
  end

# def guess_letter(letter)
#   show_word = @hidden_word
#   @hidden_word.map do |letter|
#     if letter.include? @hidden_word
#       show_word << letter
#       end
#     end 
# end

#array.map{|x|x == 4 ? 'Z' : x}

#[1,2,3,'Z']
  def guess_letter(letter)
    
    @hidden_word.map do |letter|
    if  @hidden_word.include? letter
        @hidden_word << letter 
        end
    end  
    
  end 

  #def secret_word(given_word)
  #  array_word = []
  #  @get_word = given_word.split("")
  #  @get_word.each do |letter|
  #  array_word << letter
  #  @get_word = array_word
  #    end
  #end 
  #def hide_word(array_word)
  #  @get_word = @hidden_word
  #end


  #def guess_letter(letter)
  #  show_letter = []
  #  @hidden_word.each do |letter|
  #  if letter == @hidden_word
  #    show_letter << letter 
  #    end 
  #  end 
  #end


end

game = WordGame.new("dogs")
#p game.secret_word("people")
#p game.hide_word("people")
p game.guess_letter("o")
p game 
#USER INTERFACE

#puts "Lets play the guessing game!"
#game = WordGame.new (@get_word)
#
##USER ONE INPUTS A WORD
#puts "Player one please give a word!"
#word = gets.chomp

#puts "Player two here is the hidden word!  Guess a letter!"
#letter = gets.chomp

















