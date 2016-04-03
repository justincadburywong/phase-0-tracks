# define a method that takes a spy's real name and 
# creates a fake name by doing the follwoing:
# 1. swaps the first and last name
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel 
# in 'aeiou', and all of the consonants (everything else besides the 
# vowels) to the next consonant in the alphabet. So 'a' would 
# become 'e', 'u' would become 'a', and 'd' would become 'f'.

# start by breaking down the process into smaller steps

# define a method that gets the next 
# letter on either vowels or consonants
def name_maker(new_name)
	# we need a new array for our new name to go into
	@new_alias = []
	# and a start point
	index = 0
	# some variables that hold our vowels and consonants for the
	# sequence of using .next
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	# while loop to iterate though the new_name array and change 
	# letters as it goes
	while index < new_name.length
		letter = new_name[index]
		if vowels.include?(letter)
			# EDGE CASE in case the letter is 'u', go around to the letter 'a'
			if letter == "u"
				@new_alias.push("a")
			else
				new_letter = vowels.index(letter)
				@new_alias.push(vowels[new_letter.next] )
			end
		elsif consonants.include?(letter)
			# EDGE CASE in case the letter is 'z', go around to the letter 'b'
			if letter == "z"
				@new_alias.push("b")
			else
				new_letter = consonants.index(letter)
				@new_alias.push(consonants[new_letter.next] )
			end
		else
			letter == " "
			@new_alias.push(" ")
		end
  # ratchet up the name until the letters are all manipulated
	index += 1
	end
 # bring all the letters in the array to form two elements in the array
 @alias = @new_alias.join("").split(" ")
 # bring both back together to form a new name with a space between
 @alias.each{|name| print name.capitalize, " "}
end	


# Use a data structure to store the fake names as they are entered. 
# When the user exits the program, iterate through the data structure 
# and print all of the data the user entered. 
# A sentence like "Vussit Gimodoe is actually Felicia Torres" or 
# "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.

# Empty hash to store our real/alias names in
true_name_alias_name = {}
loop {
  puts
  puts "I've got a secret-agent name converter!  What's your name?  Or just type 'quit' to exit"
  name = gets.chomp.downcase
  # just in case they hit 'enter' or actually type quit to stop
  if name == "quit" || name == ""
    true_name_alias_name.map {|fake, real| puts "#{fake} is actually #{real}."}
    break
  else
  	name_maker(name)
  	#  shove the real name and fake name in the hash
  	true_name_alias_name ["#{@alias}"] = "#{name}"
  end
}
