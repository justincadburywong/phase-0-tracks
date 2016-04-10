class Santa
	def initialize
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		print "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		print "That was a good #{cookie_type}!" 
	end


end


chris = Santa.new
p chris.speak
p chris.eat_milk_and_cookies("snickerdoodle")