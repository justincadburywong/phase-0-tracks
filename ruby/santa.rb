class Santa
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		print "Initializing Santa instance ..."
		puts "This santa identifies as a #{@gender} #{@ethnicity}."
		puts
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		print "That was a good #{cookie_type}!" 
	end


end

# chris = Santa.new("male", "chinese")
# chris.speak
# chris.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

loop do
	puts "press enter to generate a random santa.  type 'done' when finished."
	response = gets.chomp
	break if response == "done"
	# find a random number within the length of the arrays 'example_genders' and 
	# 'example_ethnicities', and use that as the index to choose which gender and
	# ethnicity to populate the new santa instance
	santas=Santa.new(example_genders[rand(example_genders.length)],example_ethnicities[rand(example_ethnicities.length)])
end

