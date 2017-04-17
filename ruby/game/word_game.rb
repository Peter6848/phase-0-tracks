


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

game = WordGame.new
p game 

while !game.over
  puts "Guess a letter! #{@hidden_word}"
  guess = gets.chomp
  if game.get_word.include? guess
    # CONVERT get_word to array
    # update hidden_word array at THE SAME INDEX that the guess matches in the get_word array
    # game.get_word.each_index.select{|i| game.hidden_word[i] == guess}
    if game.hidden_word == game.get_word
      puts "You Won!"
      game.over = true
    end
  else
    puts "NOPE! Keep guessing"
    # if out of guesses, set game over to true and let tem know they suck
  end
end

#puts "Lets play the guessing game!"
#game = WordGame.new (@get_word)
#
##USER ONE INPUTS A WORD
#puts "Player one please give a word!"
#word = gets.chomp

#puts "Player two here is the hidden word!  Guess a letter!"
#letter = gets.chomp


-------------------------------------------------------------

#GAME CLASS
class WordGame
  attr_accessor :get_word, :hidden_word
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

  def guess_letter(letter)
    #show_letter = @get_word
    
    #if @get_word.include? letter
    #    @hidden_word << letter 
    #end
    if @get_word[letter] == letter 
      @hidden_word[letter] = letter
    end 
  end

  #MAYBE A GOOD SOLUTION?
  #def guess_letter(letter)
  #other_array = @getword && @hidden_word
  #@get_word = ["d", "o", "g", "s"]
  #@hidden_word = ["_", "_", "_", "_"]
  #other_array.flatten!
  #@get_word.map! do |letter| 
  #  if @get_word[letter] == letter  
  #    @hidden_word[letter].flatten!
  #end
#end
  end
end
game = WordGame.new("dogs")
p game.guess_letter("o")
p game.get_word 






