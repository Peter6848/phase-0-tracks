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
end

