
#ask for how many interior designers will be entering details for their client:
puts "Hello fabulous!  What details about your client will you be entering today?"
interior_designer = gets.chomp.to_i

until interior_designer == 0
 #asks for a name and turns it into the hash:
  Puts "what's your full name?"
  full_name = gets.chomp.to_s
  full_name = {}

#asks for any info from the client and about their preferences
 



#checks to see if hash is fully popluated
  p full_name
 puts "Thanks for the info!  We've stored it neatly away!"
 interior_designer -= 1
end