# make a log that records beers that you've had in a database
# log them with attributes of name, alcohol percent, and rating
# be able to view the beers by any of the attributes

# create a loop that asks to populate the log, edit from, view, etc.
# no deleting allow, because you can't un-drink a beer (well, maybe you can
# let's not get into that...)

#require gems
requre 'sqlite3'

# create a database
beer_db = SQLite3::Database.new("beer-log.db")