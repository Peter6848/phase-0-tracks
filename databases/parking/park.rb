#REQUIRE GEMS
require 'sqlite3'
require 'faker'

#CREATE SQLITE3 DATABASE
db = SQLite3::Database.new("parking.db")
db.results_as_hash = true

#CREATE PARKING DATABASE
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS parking(
    id INTEGER PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255)
  )
SQL

