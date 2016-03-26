#get a bunch of inputs from user
#this starts the while loop for how many employees will be processed
puts "how many employees will be processed?"
employees=gets.chomp.to_i
applied=0
while applied<employees

	puts "what is your name?"
	name=gets.chomp
	
	puts "how old are you?"
	age=gets.chomp.to_i
	
	puts "what year were you born?"
	year=gets.chomp.to_i
	
	#this calculates the actual current date
	current_year=Time.new.year

	if current_year-year==age
		true_age=true
	else
		true_age=false
	end
	
	
	puts "Do you want some garlic bread that our cafeteria serves? (yes/no)"
	hungry=gets.chomp
	if hungry=="yes"
		hungry=true
	else
		hungry=false
	end
	
	puts "do you need to enroll in our company's health insurance? (yes/no)"
	health=gets.chomp
	if health=="yes"
		health=true
	else
		health=false
	end
	
	puts "Please list any allergies, or type 'done' when finished."
	allergies=gets.chomp
	
	#Boolean bonanza!
	#this will check if they're lying about their age, allergies, garlic, and infinite lifespan

	

	while allergies = false
		puts "Any other allergies we need to know about?"
	end
	
	if allergies == "sunshine"
		puts "probably a vampire."
		allergies = true
		break
	elsif allergies == "done"
		break
	end
	
	
	if true_age && (hungry || health)
		puts "probably not a vampire";
	elsif 
		true_age  || (hungry || health)
		puts "probably a vampire";
	elsif 
		true_age && (hungry && health)
		puts "almost certainly a vampire";
	elsif 
		(name=="Drake Cula" || name=="Tu Fang")
		puts "definitely a vampire"
	
	else	
		puts "results inconclusive";
	end

applied +=1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
