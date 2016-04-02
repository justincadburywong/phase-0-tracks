# Release 0
# A method that takes a block

def beer_colors
  puts "Gold is a beer color!"
  yield("Amber", "Chocolate")
end
beer_colors { |color1, color2| puts "#{color1} and #{color2} are also nice beer colors!"}


# Release 1
# An array, and a hash

boroughs = ["Staten Island", "Brooklyn", "Manhatten", "Queens", "Bronx"]

restaurant = {
"Staten Island" => "The ferry",
"Brooklyn" => "67 Burger",
"Manhatten" => "Chipotle",
"Bronx" => "Red Rooaster",
"Queen" => "Burger King"
}

# Iterate and modify the array
puts "These are the original 5 boroughs"
p boroughs  

boroughs.each do |city|
  p city
end

boroughs.map! do |city|
  puts city
  city << "town"
end
puts "These are the modified boroughs"
p boroughs


#Iterate and modify the hash
puts "These are some great restaurants"
p restaurant

restaurant.each do |city, diner|
  puts "#{city} has a restaurant called #{diner}"
end
p restaurant

restaurant.map do |city, diner|
  loud_restaurant = diner.upcase
  puts "#{loud_restaurant} is in #{city}!"
end
p restaurant

# Release 2

# Arrays
# A method that iterates through the items, deleting any that meet a certain condition 
colors = ["red", "yellow", "orange", "blue", "green", "majenta"]
colors.delete_if {|x| x.length > 5}
p colors

# A method that filters a data structure for only items that do satisfy a certain condition 
colors = ["red", "yellow", "orange", "blue", "green", "majenta"]
colors.keep_if {|x| x.length >= 6}
p colors


#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
colors = ["red", "yellow", "orange", "blue", "green", "majenta"]
colors.select! {|x| x.length <5}
p colors
 

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops. 
colors = ["red", "yellow", "orange", "blue", "green", "majenta"]
test = colors.drop_while {|x| x.length < 4}
p test


# Hashes
# A method that iterates through the items, deleting any that meet a certain condition 
edibles = {
  "banana" => "fruit",
  "celery" => "vegetable",
  "bread" => "carbs",
  "cake" => "dessert",
  "pasta" => "carbs"
}
edibles.delete_if {|x,y| y == "carbs"}
p edibles


# A method that filters a data structure for only items that do satisfy a certain condition 
edibles = {
  "banana" => "fruit",
  "celery" => "vegetable",
  "bread" => "carbs",
  "cake" => "dessert",
  "pasta" => "carbs"
}
edibles.keep_if {|x,y| y.length >= 6}
p edibles


# A different method that filters a data structure for only items satisfying a certain condition
edibles = {
  "banana" => "fruit",
  "celery" => "vegetable",
  "bread" => "carbs",
  "cake" => "dessert",
  "pasta" => "carbs"
}

edibles.select! {|x,y| y.length < 6}
p edibles


# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
edibles = {
  "banana" => "fruit",
  "celery" => "vegetable",
  "bread" => "carbs",
  "cake" => "dessert",
  "pasta" => "carbs"
}

test = edibles.drop_while {|x,y| x.length >= 5}
p test