# a class on a glass of beer!
# my class will have simple attributes:  @drinkability(integer), @beer_level(integer), and @color(string)
# drinkability increases the changes of it being finished, so i'll have a method that interacts with that somehow
# i can have a method that checks the beer_level while it's being drunk, so give it a current state
# and a method that at least talks about the color


class Beer_glass
	attr_reader :color
	attr_accessor :level, :drinkability


	def initialize(beer_level)
		@beer_level = level

	end

	def beer_level(i)
		if i < 10
			puts "Your beer is getting low, better get another soon!"
		else
			puts "You've got a full glass of beer!  Enjoy!"
		end
	end

	def beer_color(color)
		puts "That beer has a beautiful #{color} color!"
	end

	def beer_drinkability(string)
		if string == "yes"
			puts "That's a delicous beer!"
		else
			puts "Maybe you should try another beer."
		end
	end

end

# p stout = Beer_glass.new(10)
# p stout.beer_level(10)
# p stout.beer_color("chocolate")
# p stout.beer_drinkability("yes")

beers = []

loop do
	puts "Let me pour you a beer!  What color should it be?  Or type 'exit' to leave."
	color = gets.chomp
	break if color == "exit"
	beers << Beer_glass.new
	
end



