# define a method that takes a spy's real name and 
# creates a fake name by doing the follwoing:
# 1. swaps the first and last name
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel 
# in 'aeiou', and all of the consonants (everything else besides the 
# vowels) to the next consonant in the alphabet. So 'a' would 
# become 'e', 'u' would become 'a', and 'd' would become 'f'.

# start by breaking down the process into smaller steps

# first define a method that breaks a name down

def name_splitter(name)
  name.downcase!
  # take the name and break it into seperate words, and reverse it into an array
  new_name = name.split.reverse
  
  # now take them and put them together into a big string, and back
  # into individual strings in an array
  new_name.join('').split('')
  return new_name
end

# next, define a method that gets the next 
# letter on either vowels or consonants
def name_maker(new_name)
	# we need a new array for our new name to go into
	new_alias = []
	# and a start point
	index = 0
	# some variables that hold our vowels and consonants
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	# while loop to iterate though the new_name array and change 
	# letters as it goes
	while index < new_name.length
		letter = new_name[index]
		if vowels.include?(letter)
			# in case the letter is 'u', go around to the letter 'a'
			if letter == "u"
				new_alias.push("a")
			else
				new_letter = vowels.index(letter)
				new_alias.push(vowels[new_letter.next] )
			end
		elsif consonants.include?(letter)
			# in case the letter is 'z', go around to the letter 'b'
			if letter == "z"
				new_alias.push("b")
			else
				new_alias.push(consonants.next)
			end
		else
			letter == " "
			new_alias.push(" ")
		end
  # ratchet up the name until the letters are all manipulated
	index += 1
	end
#	return new_alias.join("").split(" ").each{|x| print x.capitalize, " "}
p new_alias
end	



p name_maker("u")