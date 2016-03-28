#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. 

def encrypt(string)
  #method takes a variable called string
  encrypted_input = ""
  #this sets our encrypted word as a blank string
  letters = 0
  #this starts the index as 0
  while letters < string.length
    #as long as we have not yet iterated over all of the letters of the input word....
    if string[letters].next == "aa"
      encrypted_input << "a"
      #if we type a "z", it will input "aa".  we want it to turn "aa" back in just "a"
    else
      encrypted_input << string[letters].next
      #otherwise take a letter and advance to the next one, storing the value inside the variable "encrypted_input"
    end   
  letters += 1
    #advance the index
  end

  encrypted_input
end


#decrypt
def decrypt(string)
  #method takes a variable called string
  decrypted_input = ""
  #this sets our decrypted word as a blank string
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  #setting variable called alphabet
  letters = 0
  #this starts the index as 0
  while letters < string.length
    #as long as we have not yet iterated over all of the letters of the input word....
    if string[letters].next == "a"
      decrypted_input << "z"
      #if we type an "a", it will input "a".  we want it to turn "a" back in just "z"
    else
      decrypted_input << alphabet[alphabet.index(string[letters]) - 1]
      #otherwise take a letter and go back a letter, storing the value inside the variable "decrypted_input"
    end   
  letters += 1
    #advance the index
  end

  decrypted_input
end


puts "Would you like to decrypt or encrypt a password? (decrypt/encrypt)"
answer = gets.chomp

unless answer == "decrypt" || answer == "encrypt"
  puts "I can't understand that word.  Try again later"
end


if answer == "decrypt"
  puts "Please enter password"
  string = gets.chomp
  puts decrypt(string)
end
if
  answer == "encrypt"
  puts "Please enter password"
  string = gets.chomp
  puts encrypt(string)
end