# a class on a glass of beer!
# my class will have simple attributes:  @drinkability(integer), @beer_level(integer), and @color(string)
# drinkability increases the changes of it being finished, so i'll have a method that interacts with that somehow
# i can have a method that checks the beer_level while it's being drunk, so give it a current state
# and a method that at least talks about the color


class Beer_glass
	attr_reader :color
	attr_accessor :level, :drinkability


	def initialize(beer_level, beer_color, beer_drinkability)
		@beer_level = level
		@beer_color = beer_color
		@beer_drinkability = beer_drinkability
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
	puts "Let me pour you a beer, or type 'exit' to leave."
	go = gets.chomp
	break if go == "exit"
	
	puts "On a scale of 1 to 10, how full do you want your glass?"
	@beer_level = gets.chomp.to_i
	
	puts "What color beer do you like to drink?"
	@beer_color = gets.chomp.to_s
	
	puts "On a scale of 1 to 10, how drinkable do you like your beer?"
	@beer_drinkability = gets.chomp
	
	beers << Beer_glass.new(
		@beer_level,
		@beer_color,
		@beer_drinkability
		)
end
puts "----------"
puts "Check out all the beers you've had!"
beers.each do |x|
	puts x
end
	


