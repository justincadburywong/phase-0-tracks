# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/age' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  student.to_s
end

# contact with query parameter
get '/contact' do
  "Hit us up at 429 E Blithedale Ave, Mill Valley, CA 94941"
end

# query parameter or no query parameter
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#two route parameters
get '/math/:num1/plus/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  sum = num1 + num2
  sum.to_s
end



