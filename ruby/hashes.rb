
#ask for how many interior designers will be entering details for their client:
puts "Hello fabulous!  What details about your client will you be entering today?"
interior_designer = gets.chomp.to_i

until interior_designer == 0
 #asks for a name and turns it into the hash:
  puts "what's your client's full name?"
  client_name = gets.chomp.to_s
  client_name = {}

#asks for any info from the client and about their preferences
  puts "What do you want to add about your client"



#checks to see if hash is fully popluated
  p client_name
 puts "Thanks for the info!  We've stored it neatly away!"
 interior_designer -= 1
end