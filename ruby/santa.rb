class Santa

	attr_reader :gender, :ethnicity
	attr_writer :age, :name

	def initialize(gender, ethnicity, name, age)
		@gender = gender
		@ethnicity = ethnicity
		@name = name
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		print "Initializing Santa instance ..."
		puts "This santa is a #{@age} year old named #{@name} and identifies as a #{@gender} #{@ethnicity}."
		puts
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

	def celebrate_birthday
		@age += 1
		puts "Happy birthday!  You're now #{@age} years old!"
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		puts "You've been bad, #{reindeer_name}!  Back of the line!"
	end

	# # getter methods
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end


end

# chris = Santa.new("male", "thai")
# chris.speak
# chris.eat_milk_and_cookies("snickerdoodle")
# chris.get_mad_at("Vixen")
# chris.celebrate_birthday
# p chris

santas = []
example_genders = ["agender", "female", "bi-gender", "male", "female", "gender-fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas
example_names = ["Lynda", "Justin", "Ethen", "Nami", "Ruthie", "Shane", "Gwen", "Sarah", "Chris"]


loop do
	puts "press enter to generate a random santa.  type 'done' when finished."
	response = gets.chomp
	break if response == "done"
	# find a random number within the length of the arrays 'example_genders' and 
	# 'example_ethnicities', and use that as the index to choose which gender and
	# ethnicity to populate the new santa instance
	santas = Santa.new(
		example_genders[rand(example_genders.length)],
		example_ethnicities[rand(example_ethnicities.length)],
		example_names[rand(example_names.length)],
		@age = rand(0..140)
	)
end

