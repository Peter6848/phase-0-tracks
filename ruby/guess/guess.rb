#One user can enter a word and another user attempts to
#guess the word.
  #TAKE A STRING AS INPUT FROM USER 1 AND TURN INTO ARRAY TO ITERATE OVER.
  #DISPLAY LETTERS OF ARRAY AS UNDERSCORES TO USER 2.
 

#Guesses are limited, and the number of guesses 
#available is related to the length of the word.
#TELL USER 2 HOW MANY GUESSES THEY HAVE BASED ON ARRAY LENGTH.

#Repeated guesses do not count against the user.
  #IF GUESSED LETTER WAS ALREADY TRIED BY USER 2 GUESS LENGTH
  #DOES NOT CHANGE.

#The guessing player receives continual feedback 
#on the current state of the word. So if the secret 
#word is "unicorn", the user will start out seeing 
#something like "_ _ _ _ _ _ _", which would become 
#{}"_ _ _ c _ _ _" after the user enters a guess of "c".
  #AFTER EACH GUESS, ITERATE THROUGH ORIGINAL ARRAY OF LETTERS
    #IF GUESSED LETTER IS CORRECT REPLACE NEW ARRAY OF UNDERSCORES
    #AT CORRECT INDEX
    #SHOW RESULT TO USER 2

#The user should get a congratulatory message if they win, 
#and a taunting message if they lose.
  #PRINT MESSAGE AT END OF GAME BASED ON WIN OR LOSE.

class Guess
  attr_reader :word, :new_word, :hidden_word, :guessed_letters
  attr_accessor :game_over, :guess_count
  def initialize(word)
    @word = word.split('')
    @hidden_word = "_" * word.length 
    @guessed_letters = []
    @guess_count = word.length
    @game_over = false
  end

  # MUCH CLEANER CORRECT VERSION!!
  def change_word(letter)
    if @guessed_letters.include? letter
      puts "You already guessed that letter!  Try again!"
    else
      @guess_count -= 1
    end
    @word.each_index do |index|
      if @word[index] == letter 
        @hidden_word[index] = letter
        if !@guessed_letters.include? letter
          @guessed_letters << letter
          
        end
     end
    end
    @hidden_word
  end
# OVER COMPLICATED AND INCORRECT VERSION!
#  def change_word(letter)
#    char = @word.index(letter)
#    if @guessed_letters.include? letter
#      puts "You already guessed that letter!  Try again!"
#      @guess_count += 1
#    end
#    @word.each_index do |index|
#      if @word[char] == letter 
#        @hidden_word[char] = letter
#      
#      if !@guessed_letters.include? letter
#          @guessed_letters << letter
#        end
#      end
#    end
#    @hidden_word
#  end

end
puts "Lets play hangman! Player 1 please type a word for Player 2 to guess!"
word = gets.chomp
game = Guess.new(word)

puts "Player 2 here is your word!: #{game.hidden_word}"

until game.guess_count == 0
  puts "Player 2 you have #{game.guess_count} guesses!  Give me a letter"
  letter = gets.chomp
  game.change_word(letter)
  puts "Your updated word is #{game.hidden_word} and you're guessed letters are #{game.guessed_letters}!"
  if !game.hidden_word.include? "_"
    puts "Congrats you win!"
    game.game_over = true
    break
  end
  if game.guess_count == 0
    puts "Sorry you lose!"
    game.game_over = true
  end
end



#game = Guess.new("hello")
#p game.hidden_word 
#p game.change_word("h") 
#p game.change_word("e")
#p game.change_word("l")
#p game.change_word("o")
#p game.guessed_letters
#p game.guess_count










