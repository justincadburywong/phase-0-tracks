
def beer_colors
  puts "Gold is a beer color!"
  yield("Amber", "Chocolate")
end
beer_colors { |color1, color2| puts "#{color1} and #{color2} are also nice beer colors!"}

