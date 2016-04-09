=begin
add original list
print original list
ask user if they want to make any changes
if yes, go through loop
ask user if they want to make any changes
if yes, go through loop
if no, break and print final list


=end
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
puts "what do you want to buy?"
items_hash = gets.chomp.split(" ")

# initialize empty hash
grocery_list = {} 

# output: [what data type goes here, array or hash?]  we're going to set up the list to add items to an array, but ultimately put them as keys in a hash with default values of 1
items_hash.each { |k| grocery_list[k] = 1 }

# print the list to the console [can you use one of your other methods here?]
puts "Here's your initial grocery list: "
puts 
grocery_list.each { |key, value| puts "#{value} unit(s) of #{key}" }
puts
puts

# begin loop to see if user wants to mkae any changes to the grocery list
loop do
  puts "Do you want to make any changes to your grocery list? (y/n)"
  make_changes = gets.chomp.downcase
  puts
  
  # if no changes are desired, break loop
  if make_changes == "n" || make_changes == "no"
    puts "Thanks for using the Shopinator 5000!"
    break
  
  # if changes are desired, find out what function to use to change
  elsif make_changes == "y" || make_changes == "yes"
      puts "Enter the function you want to do, either 'add item', 'delete item', or 'update quantity':"
      answer = gets.chomp
      puts

    # Method to add an item to a list
    if answer == "add item"
     puts "how many more items do you want to add?"
     times = gets.chomp.to_i
     puts
     
    times.times do
      puts "add the thing you need to buy:"
      food = gets.chomp   
      puts
      puts "Add the quanity:"
      quantity = gets.chomp.to_i
      puts
      grocery_list[food] = quantity
    end
          
        elsif answer == "delete item" 
    
         puts "how many items do you want to remove?"
         times = gets.chomp.to_i
         puts
         
         times.times do
           puts "what do you want to remove?"
           remove_item = gets.chomp
           puts
           grocery_list.delete(remove_item)
         end
      
       # Method to update the quantity of an item
       elsif answer == "update quantity" 
        
        puts "how many items do you want to update?"
        times = gets.chomp.to_i
        puts
                
        times.times do
          puts "which item do you want to update?"
          food = gets.chomp
          puts
          puts "What is the new quantity?"
          quantity = gets.chomp.to_i
          puts
          grocery_list[food] = quantity
        end
    end
  end
end
  

# Method to print a list and make it look pretty 
puts "Here's your final grocery list: "
puts 
grocery_list.each {|key, value| puts "#{value} unit(s) of #{key}"}
# steps:
# output:

# What did you learn about pseudocode from working on this challenge?
  #pseudocode is an important thought process activator, and for me it 
  #helped to re-write the code based on how it was written.  i think it's 
  #important to make sure pseudocode is readable by yourself, otherwise you 
  #might get confused by someone else's code

# What are the tradeoffs of using arrays and hashes for this challenge?
  #arrays initially made sense to set up the list, but ultimately, we 
  #wanted to use a hash because of the nature of keeping grocery items with
  #values.  a hash made sense for this.

# What does a method return?
  #a method returns the value of what object we want to manipulate.  in this 
  #excercise, we didn't define any methods, but instead used class methods
  #for the strings and hashes we used.  we manipulated them inline, so we 
  #didn't end up refactoring much.  we also made sure to just implicitly return
  #our values, and print the hash when it was appropriate.  we did do a bit of
  #debug printing, but otherwise, in our final release we didn't print much.

# What kind of things can you pass into methods as arguments?
  #almost anything, i suppose.  we mostly used gets.chomp to get input and
  #pass that into our inline class methods.

# How can you pass information between methods?
  #you can declare that info and call it outside the method, or you can yield

# What concepts were solidified in this challenge, and what concepts are still confusing?
  #i think we practiced a lot of inline class methods, which allowed us to 
  #things simple, and loops => practicing loops and making sure we're getting the right
  #input in the right place.
  #i think i'm still a little confused about a cleaner way of iterating over 
  #hashes and arrays





