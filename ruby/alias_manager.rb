# define a method that takes a spy's real name and 
# creates a fake name by doing the follwoing:
# 1. swaps the first and last name
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel 
# in 'aeiou', and all of the consonants (everything else besides the 
# vowels) to the next consonant in the alphabet. So 'a' would 
# become 'e', 'u' would become 'a', and 'd' would become 'f'.

# start by breaking down the process into smaller steps

# takes a string from a user

puts "What's your name?"
name = gets.chomp

  # take the name and break it into individual letters
  name_array = name.split('')
  
  #iterate over each vowel and advance it to the next one
  p name_array.each do  |x == "a" || x == "e" || x == "i" || x == "o" || x == "u"| x.next!

  
  
  # take the name and break it into seperate words, and reverse it into an   array
  # p  name.split.reverse
  
  # now take them and put them into an array
  # p name.each.
  
  # 
  # name.each {|vowel| vowel.next}
  # name
  # new_name = name.join('')
  # 

