class Santa
	def initialize
		print "Initializing Santa instance ..."
		def speak
			puts "Ho, ho, ho! Haaaappy holidays!"
		end
		def eat_milk_and_cookies(cookie_type)
			print "That was a good #{cookie_type}!" 
		end

	end
end


chris = Santa.new
p chris.speak
p chris.eat_milk_and_cookies("snickerdoodle")