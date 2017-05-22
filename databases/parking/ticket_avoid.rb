#REQUIRE GEMS
require 'sqlite3'
require 'faker'

#CREATE RANDOM NO PARKING TIMES FOR NO PARKING COLUMN
def ticket_time
  x = rand(12)
  y = rand(12)
  p "#{x}-#{y}"
end

def start_time
  rand(6)
end

def end_time 
  rand(6)
end

#CREATE SQLITE3 DATABASE
db = SQLite3::Database.new("parking.db")
#db.results_as_hash = true

#CREATE PARKING DATABASE
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS parking(
    id INTEGER PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip INT,
    no_parking VARCHAR(255),
    start_time INT,
    end_time INT
  )
SQL

db.execute(create_table_cmd)

def create_parking(db, street, city, state, zip, no_parking, start_time, end_time)
  db.execute("INSERT INTO parking (street, city, state, zip, no_parking, start_time, end_time) VALUES (?, ?, ?, ?, ?, ?, ?)", [street, city, state, zip, no_parking, start_time, end_time])
end

100.times do 
  create_parking(db, Faker::Address.street_name, Faker::Address.city, Faker::Address.state, Faker::Address.zip, ticket_time, start_time, end_time)
end

parking = db.execute("SELECT * FROM parking")
my_location = db.execute("SELECT * FROM parking ORDER BY RANDOM() LIMIT 1")

#puts "Your vehicles location is at #{my}"

def alert_me(my_location)
  my_location
  if my_location[0][-2] == 5 || my_location[0][-1] == 6
  ###if Time.now == my_location.start || Time.now == my_location.end
    p "You need to move your vehicle!"
  else
    p "You can leave your vehicle!"
  end 
end

p my_location
p alert_me(my_location)

