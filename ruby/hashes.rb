
#ask for how many interior designers will be entering details for their client:
puts "Hello fabulous!  How many clients will you be entering today?"
interior_designer = gets.chomp.to_i

until interior_designer == 0
 #asks for a name and turns it into the hash:
  puts "What's the name?"
  client_name = gets.chomp.to_s
  client_name = {}

#ask loop for any info from the client and about their preferences
  puts "What is the age?"
    age = gets.chomp.to_i
  puts "How many children do they have?"
  	children = gets.chomp.to_i
  puts "What type of decor theme do they like?"
    decor = gets.chomp.to_s

#shove it in a new hash
client_name[:age] = age
client_name[:children] = children
client_name[:decor] = decor

#prints out the hash so the user can see it
  p "#{client_name}"
  
#give them an opportunity to corrent anything
puts "Do you need to change anything?"
change = gets.chomp.downcase

if change != "no"
	puts "Let me know what needs to be changed:"
	new_key = gets.chomp
	puts "What is it changed to?"
	new_value = gets.chomp
	client_name[new_key.to_sym] = new_value
end

p "#{client_name}"
  
 puts "Thanks for the info!  We've stored it neatly away!"
 interior_designer -= 1
end