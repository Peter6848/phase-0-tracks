# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each { |item| print "#{item} * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def sort(array)
  changed = false
  array[0...-1].each_with_index do |element, i|
    if element.downcase > array[i+1].downcase
      array[i], array[i+1] = array[i+1], array[i]
      changed = true 
      end
    end 
    sort(array) if changed
    array 
end

p sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def pack_check(array, string)
  if array.include? string
    true
  else
    false
  end
end 

p pack_check(zombie_apocalypse_supplies, "shotgun")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def remove_stuff(array)
  new_pack = []
  5.times do
    new_pack << array.sample
  end 
  new_pack
end

p remove_stuff(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# ----
new_pack = ["shotgun", "hatchet", "compass", "batteries", "binoculars"]
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove", "solar battery", "flashlight"]
combined_pack = [new_pack, other_survivor_supplies]
combined_pack.flatten!.uniq!
p sort(combined_pack)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |animal, year|
  puts "* #{animal} - #{year} *"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
new_animals = {}
extinct_animals.each do |animal, year|
  if year < 2000 
    new_animals[animal] = year  
  end
end

p new_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3
end

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def is_extinct(hash, string)
  result = false
  hash.each_key do |animal|
    
    if animal.to_s == string
      return true
    else
      false
    end
  end
  result
end

#  hash.has_key?("#{string}")
#end

p is_extinct(extinct_animals, "Laysan Crake")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
new_hash = extinct_animals.to_a
new_hash[0], new_hash[4] = new_hash[4], new_hash[0]
new_hash
extinct_animals = new_hash.to_h 
p extinct_animals.shift
p extinct_animals




