# make a log that records beers that you've had in a database
# log them with attributes of name, alcohol percent, and rating
# be able to view the beers by any of the attributes

# create a loop that asks to populate the log, edit from, view, etc.
# no deleting allowed, because you can't un-drink a beer (well, maybe you can
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
	abv FLOAT,
	rating FLOAT
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

#update brewery name (in case of drunk fingers)
def update_brewery(db, id, brewery)
	db.execute("UPDATE beers_drank SET brewery=? WHERE id=?", [brewery, id])
end

#update name of beer
def update_name(db, id, name)
	db.execute("UPDATE beers_drank SET name=? WHERE id=?", [name, id])
end

# update abv
def update_abv(db, id, abv)
	db.execute("UPDATE beers_drank SET abv=? WHERE id=?", [abv, id])
end

# update rating
def update_rating(db, name, rating)
	db.execute("UPDATE beers_drank SET rating=? WHERE name=?", [rating, name])
end

def delete_beer(db, id)
	db.execute("DELETE FROM beers_drank WHERE ID=?", [id])
# driver code to update beer - NOT WORKING YET
# update_rating(beer_db, "chocolate stout", 4)
end

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
40.times do print "-" end
puts
first_list = beer_db.execute(display_beer)
first_list.each do |thing|
	puts "Beer ##{thing['id']}.  You had a '#{thing['name']}' from #{thing['brewery']} at #{thing['abv']}%.  You rated it a #{thing['rating']}."
end
40.times do print "-" end
puts

loop do
	puts "Do you want to ADD a beer, VIEW your log, or UPDATE your log? (Type 'add', 'view', or 'update').  Type 'done' to finish."
	action = gets.chomp
	break if action == "done"

	if action == "add"
		puts "What is the brewery that made the beer?"
		brewery = gets.chomp
		puts "What is the beer called?"
		name = gets.chomp
		puts "What is the alcohol-by-volume?"
		abv = gets.chomp
		puts "What is the rating of the beer, out of 10?"
		rating = gets.chomp
		add_beer(beer_db, brewery, name, abv, rating)

	elsif action == "view"		
	40.times do print "-" end
	puts
	loop do 
		puts "You can view the sorted log by typing 'brewery', 'name', 'abv', or 'rating'.  Type 'yes' to view your list in order, or 'no' to move on."
		view = gets.chomp
		break if view == "no"
			if view == "yes"
				40.times do print "-" end
				puts
				view = beer_db.execute(display_beer)
				view.each do |thing|
					puts "Beer ##{thing['id']}.  You had a '#{thing['name']}' from #{thing['brewery']} at #{thing['abv']}%.  You rated it a #{thing['rating']}."
				end
				40.times do print "-" end
				puts
		#include a 'yes' answer to view the ranked log
			elsif view == "brewery"
				40.times do print "-" end
				puts
				new_list = beer_db.execute(sort_brewery)
				new_list.each do |thing|
					puts "From #{thing['brewery']}.  The '#{thing['name']}' at #{thing['abv']}%.  You gave it a #{thing['rating']}."
				end
				40.times do print "-" end
				puts
			elsif view == "name"
				40.times do print "-" end
				puts
				new_list = beer_db.execute(sort_name)
				new_list.each do |thing|
					puts "The '#{thing['name']}' from #{thing['brewery']}.  Coming in at #{thing['abv']}%.  You gave it a #{thing['rating']}."
				end
				40.times do print "-" end
				puts
			elsif view == "abv"
				40.times do print "-" end
				puts
				new_list = beer_db.execute(sort_abv)
				new_list.each do |thing|
					puts "Coming in at #{thing['abv']}% was the '#{thing['name']}' from #{thing['brewery']}.  You gave it a #{thing['rating']}."
				end
				40.times do print "-" end
				puts
			elsif view == "rating"
				40.times do print "-" end
				puts
				new_list = beer_db.execute(sort_rating)
				new_list.each do |thing|
					puts "Given a rating of #{thing['rating']}, the #{thing['abv']}% ABV '#{thing['name']}' by #{thing['brewery']} was the ##{thing['id']} beer you had."
				end
				40.times do print "-" end
				puts
			else 
				puts "I didn't understand that... "
			end
		end

	elsif action == "update"	
	# try for updating a beer
		loop do 
			40.times do print "-" end
			puts
			puts "Does anything need to be EDITED?  Type 'update' or 'delete' to modify an entry, or type 'no' to finish."
			update = gets.chomp
			break if update == "no"
				if update == "update"
					puts "What do you want to change?  Type 'brewery', 'name', 'abv', or 'rating'."
					change = gets.chomp
	
						if change == "brewery"
							puts "What number beer needs to change?"
							id = gets.chomp.to_i
							puts "What is the brewery called?"
							brewery = gets.chomp
							update_brewery(beer_db, id, brewery)
	
						elsif change == "name"
							puts "what number beer needs to change?"
							id = gets.chomp.to_i
							puts "What is the real name of the beer?"
							name = gets.chomp
							update_name(beer_db, id, name)
							new_name = beer_db.execute("SELECT * FROM beers_drank WHERE id=#{id}")
							new_name.each do |thing|
								puts "The name for the #{thing['name']} has been updated."
							end
	
						elsif change == "abv"
							puts "What number beer needs to change?"
							id = gets.chomp.to_i
							puts "What is the actual alcohol-by-volume?"
							abv = gets.chomp.to_f
							update_abv(beer_db, id, abv)
							new_abv = beer_db.execute("SELECT * FROM beers_drank WHERE id=#{id}")
							new_abv.each do |thing|
								puts "The updated alcohol-by-volume is now #{thing['abv']}."
							end
	
	
						elsif change == "rating"
							puts "What number beer needs a new rating?"
							id = gets.chomp.to_i
							puts "What is the new rating of beer ##{id}?"
							rating = gets.chomp.to_f
							update_rating(beer_db, id, rating)
							new_rating = beer_db.execute("SELECT * FROM beers_drank WHERE id=#{id}")
							new_rating.each do |thing|
								puts "The new rating for beer ##{thing['id']} is a #{thing['rating']}."
							end
						else
							puts "What?"
							
						end
				elsif update == "delete"
					puts "What beer number do you want to delete?"
					delete = gets.chomp.to_i
					delete_beer(beer_db, delete)
					puts "Here's your updated list:"
					view = beer_db.execute(display_beer)
					view.each do |thing|
						puts "Beer ##{thing['id']}.  You had a '#{thing['name']}' from #{thing['brewery']} at #{thing['abv']}%.  You rated it a #{thing['rating']}."
					end
	
	
				else
					puts "I didn't understand that..."
				end
		end
	else 
		puts "What?  Try again."
	end
end
puts "Thanks for logging your beers.  Check back later to see them all!"