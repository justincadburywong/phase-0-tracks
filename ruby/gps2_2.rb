# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
puts "what do you want to buy?"
items_array = gets.chomp.split(" ")
  # [fill in any steps here]
grocery_list = {} 
items_array.each { |k| grocery_list[k] = 1 }

# p items_array
# p grocery_list
puts 
# p grocery_list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]  we're going to set up the list to add items to an array, but ultimately put them as keys in a hash with default values of 1

# Method to add an item to a list
# input: item name and optional quantity




    # steps:

  puts "how many more items do you want to add?"
  times = gets.chomp.to_i
  
times.times do

  puts "add the thing you need to buy:"
  food = gets.chomp
  
  puts "Add the quanity:"
  quantity = gets.chomp.to_i
  
  grocery_list[food] = quantity

end

p grocery_list
  # output:
  # p grocery_list
  # puts
  # Method to remove an item from the list
  # input:
  
puts "how many items do you want to remove?"
times = gets.chomp.to_i
  
times.times do

  puts "what do you want to remove?"
  remove_item = gets.chomp
  
  # steps:
  grocery_list.delete(remove_item)
  
end
  # output:
  p grocery_list
  puts 
  
puts "how many items do you want to update?"
times = gets.chomp.to_i
  
times.times do

  # Method to update the quantity of an item
  # input:
  puts "which item do you want to update?"
  food = gets.chomp
  
  puts "What is the new quantity?"
  quantity = gets.chomp.to_i
  # steps:
  # updated_grocery_list = {}
  grocery_list[food] = quantity
  # grocery_list.merge!(updated_grocery_list)
  # output:
end
  p grocery_list
  puts 
  # Method to print a list and make it look pretty
  # input:
    

puts "Here's your grocery list: "
puts 
grocery_list.each {|key, value| puts "#{value} unit(s) of #{key}"}
# steps:
# output: