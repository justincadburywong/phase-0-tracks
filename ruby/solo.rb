# a class on a glass of beer!
# my class will have simple attributes:  @drinkability(integer), @beer_level(integer), and @color(string)
# drinkability increases the changes of it being finished, so i'll have a method that interacts with that somehow
# i can have a method that checks the beer_level while it's being drunk, so give it a current state
# and a method that at least talks about the color


class Beer_glass
	attr_reader :color
	attr_accessor :level, :rating


	def initialize(level, beer_color, rating)
		puts "Filling a glass.."
		puts
		@beer_level = level
		@beer_color = beer_color
		@rating = rating

	end

	def fill(number)
		if number < 10
			puts "Your beer is getting low, better get another soon!"
		else
			puts "You've got a full glass of beer!  Enjoy!"
		end
	end

	def description(color)
		puts "That beer has a beautiful #{color} color!"
	end

	def flavor(value)
		if value == 10
			puts "That's a delicous beer!"
		else
			puts "Maybe you should try another beer."
		end
	end
	
	def summary
		puts "You had a #{@beer_color} beer filled to level #{@beer_level} that tasted like a #{@rating} out of 10."
		puts
	end

end

# driver code
# p stout = Beer_glass.new(10, "chocolate", 9)

beers = []
i = 0
loop do
	puts "Hit enter to let me pour you a beer, or type 'done' to leave."
	go = gets.chomp
	break if go == "done"
	
	puts "On a scale of 1 to 10, how full do you want your glass?"
	@beer_level = gets.chomp.to_i

	puts "What color beer do you like to drink?"
	@beer_color = gets.chomp.to_s
	
	puts "On a scale of 1 to 10, how delicious should this beer be?"
	@rating = gets.chomp.to_i
	

	beers << Beer_glass.new(
		@beer_level,
		@beer_color,
		@rating
		)
	
# this part i can't figure out.  i want it to run my methods after each 
# new instance, or glass, which gives it descriptions about the beer 
# that was just poured.  I can't seem to get them to work because of
# an undefined method for the array... is it because my instance methods
# don't work on an array?  or is it because i didn't change their scope?

	beers.fill(beers[0])  #run the method 'fills' on instance 'beers' with parameter 'index 0' of 'beers'
	beers.description(beers[1])
	beers.flavor(beers[2])
	

end
puts "----------"
puts "You've had #{beers.length} beers!"
puts

while i < beers.length
  beers[i].summary
  i = i + 1
end

puts "Now go home, you're done!"
