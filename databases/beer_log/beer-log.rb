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
def add_beer(db, name, brewery, abv, rating)
	db.execute("INSERT INTO beers_drank( name, brewery, abv, rating) VALUES (?, ?, ?, ?)", [name, brewery, abv, rating])
end

# driver code to test population of beer array within database
# add_beer(beer_db, "chocolate stout", "high water brewing company", 5, 9)

#display all beers drankedt

display_beer = <<-MORESQL
	SELECT * FROM beers_drank
	MORESQL
	
# driver code to display list
print beer_db.execute(display_beer)

# update rating








