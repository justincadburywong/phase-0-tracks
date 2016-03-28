#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. 
puts "type a word"
string=gets.chomp

def encrypt(string)
  #method takes a variable called string
  new_string = ""
  #encrypted_input = ""
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

puts encrypt(string)