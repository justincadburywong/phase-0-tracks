def real_city(x, y, z)
	return [x, y, z]
end

def new_array(array, item)
	return array << item
end

California = []
p California
California << "San Diego"
California << "San Francisco"
California << "Los Angeles"
California << "Sacramento"
California << "San Jose"
p California
California.delete_at(2)
p California
California.insert(2, "Mill Valley")
p California
California.shift
p California
if California.include?("Mill Valley")
	puts "That is in California!"
else
	puts "Location not found.  Please try again later or incorporate that city/town."
end


Illinois = ["Chicago", "Springfield", "Naperville (Neighborville with a 'P'"]
p Illinois
Calinois = []
Calinois << California << Illinois
p Calinois

p real_city(2, 3, 4)
p new_array(Calinois, "Downers Grove")