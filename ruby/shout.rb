# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		"I can't contain myself!!  " + words + "!!!" + "  :):):):)"
# 	end
# end

# puts Shout.yell_angrily("No way!!  I can't take this anymore!")
# puts Shout.yelling_happily("I can't believe this worked")


module Shout
	def alert(name)
		puts "Hold it right there #{name}!!"
	end
end
