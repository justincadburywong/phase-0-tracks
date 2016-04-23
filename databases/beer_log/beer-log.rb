# make a log that records beers that you've had in a database
# log them with attributes of name, alcohol percent, and rating
# be able to view the beers by any of the attributes

# create a loop that asks to populate the log, edit from, view, etc.
# no deleting allow, because you can't un-drink a beer (well, maybe you can
# let's not get into that...)

#require gems
require 'sqlite3'

# create a database
beer_db = SQLite3::Database.new("beer-log.db")
beer_db.results_as_hash = true
#create a table within the database
create_table_cmd = <<-SQLSTUFF
	CREATE TABLE IF NOT EXISTS beers_drank(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	brewery VARCHAR(255),
	abv INT,
	rating INT
	)
	SQLSTUFF

# create a table for the beers!  bring it to life!  
beer_db.execute(create_table_cmd)

# make some methods to do stuff:

# add a beer to the list
def add_beer(db, brewery, name, abv, rating)
	db.execute("INSERT INTO beers_drank( brewery, name, abv, rating) VALUES (?, ?, ?, ?)", [brewery, name, abv, rating])
end

# driver code to test population of beer array within database
# add_beer(beer_db, "high water brewing company", "chocolate stout", 5, 9)
# add_beer(beer_db, "21st ammendment", "back to black", 7, 10)
# add_beer(beer_db, "bear republic", "racer 5", 6, 9)

# update rating
def update_rating(db, name, rating)
	db.execute("UPDATE beers_drank SET rating=? WHERE name=?", [name, rating])
end

# driver code to update beer - NOT WORKING YET

update_rating(beer_db, "chocolate stout", 4)

#display all beers drankedt
display_beer = <<-MORESQL
	SELECT * FROM beers_drank
	MORESQL

# sort by (user input)
sort_brewery = <<-BREWERYSQL
	SELECT * FROM beers_drank ORDER BY brewery
	BREWERYSQL

sort_name = <<-NAMESQL
	SELECT * FROM beers_drank ORDER BY name
	NAMESQL

sort_abv = <<-ABVSQL
	SELECT * FROM beers_drank ORDER BY abv
	ABVSQL

sort_rating = <<-RATINGSQL
	SELECT * FROM beers_drank ORDER BY rating
	RATINGSQL

=begin driver code
print beer_db.execute(display_beer)
print beer_db.execute(sort_abv)
=end

# now the interactive loop for users to try:

puts "Welcome to your very own beer log.  Here you will be able to rate all of the beers you drink, and give them ratings.  You'll also be able to sort them by brewery, name, alcohol percentage, and your rating."
puts "Let's get started!  First, here is your most current beer log:"
first_list = beer_db.execute(display_beer)
first_list.each do |thing|
	puts "Beer ##{thing['id']}.  You had a #{thing['name']} from #{thing['brewery']} at #{thing['abv']}%.  You rated it a #{thing['rating']}."
end
loop do
	puts "Are you ready to add a beer? (yes/no)"
	new_beer = gets.chomp
	break if new_beer == "no"
	puts "What is the brewery that made the beer?"
	brewery = gets.chomp
	puts "What is the beer called?"
	name = gets.chomp
	puts "What is the alcohol-by-volume?  (Please round up or down to the nearest integer)"
	abv = gets.chomp
	puts "What is the rating of the beer, out of 10?"
	rating = gets.chomp
	add_beer(beer_db, brewery, name, abv, rating)

end

loop do 
	puts "Do you want to view your updated log?  You can view the sorted log by typing 'brewery', 'name', 'abv', or 'rating'.  Type 'no' to exit."
	view = gets.chomp
	break if view == "no"
		if view == "brewery"
			new_list = beer_db.execute(sort_brewery)
			new_list.each do |thing|
				puts "From #{thing['brewery']}.  The '#{thing['name']}' at #{thing['abv']}%.  You gave it a #{thing['rating']}."
			end
		elsif view == "name"
			new_list = beer_db.execute(sort_name)
			new_list.each do |thing|
				puts "The '#{thing['name']}' from #{thing['brewery']}.  Coming in at #{thing['abv']}%.  You gave it a #{thing['rating']}."
			end
		elsif view == "abv"
			new_list = beer_db.execute(sort_abv)
			new_list.each do |thing|
				puts "Coming in at #{thing['abv']}% was the '#{thing['name']}' from #{thing['brewery']}.  You gave it a #{thing['rating']}."
			end
		elsif view == "rating"
			puts beer_db.execute(sort_rating)
		else 
			puts "I didn't understand that... "
		end

end

puts "Thanks for logging your beers.  Check back later to see them all!"
