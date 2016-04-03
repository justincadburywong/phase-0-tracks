
#ask for how many interior designers will be entering details for their client:
puts "Hello fabulous!  How many clients will you be entering today?"
interior_designer = gets.chomp.to_i

until interior_designer == 0
 #starts an empty hash called client_info
  client_info = {}  
 
#ask loop for any info from the client and about their preferences
  puts "What's the name of the client?"
    name = gets.chomp.to_sym
  puts "What is the age of the client?"
    age = gets.chomp.to_i
  puts "How many children do they have?"
  	children = gets.chomp.to_i
  puts "What type of decor theme do they like?"
    decor = gets.chomp.to_sym

#shove it in a new hash
client_info[:name] = name
client_info[:age] = age
client_info[:children] = children
client_info[:decor] = decor

#prints out the hash so the user can see it
  p client_info
  
#give them an opportunity to corrent anything
puts "Do you need to change anything?"
change = gets.chomp.downcase

if change != "no"
	puts "Let me know what needs to be changed:"
	new_key = gets.chomp
	puts "What is it changed to?"
	new_value = gets.chomp.to_sym
	client_info[new_key.to_sym] = new_value
	p "#{client_info}"
end

  
 puts "Thanks for the info!  We've stored it neatly away!"
 interior_designer -= 1
end