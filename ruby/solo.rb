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
		puts "You had a #{@beer_color} beer filled to level #{@beer_level} that was a #{@rating} on a scale of 1 to 10."
		puts
	end

end

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
	
	puts "On a scale of 1 to 10, how drinkable do you like your beer?"
	@rating = gets.chomp.to_i
	

	beers << Beer_glass.new(
		@beer_level,
		@beer_color,
		@rating
		)

end
puts "----------"
puts "You've had #{beers.length} beers!"
puts

while i < beers.length
  beers[i].summary
  i = i + 1
end
