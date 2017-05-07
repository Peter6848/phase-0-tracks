# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

list = {}

def grocery_list(items, amount=1)
    
    list = {}
    
    groceries = items.split(' ')
    
    groceries.each do |item|
        list[item] = amount
    end
    
    list
    
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

new_list = grocery_list("Lemonade Tomatoes Onions Ice-cream")

def add_item(new_list, item, quantity=0)
  
    new_list[item] = quantity
    
    new_list
end

p add_item(new_list, "Lemonade", 2)
p add_item(new_list, "Tomatoes", 3)
p add_item(new_list, "Ice-cream", 4)
p add_item(new_list, "Onions", 1)

# Method to remove an item from the list
# input:
# steps:
# output:


def remove_item(new_list, item)
    
    new_list.delete(item)
    
    new_list
end

remove_item(new_list, "Lemonade")

p new_list

# Method to update the quantity of an item
# input:
# steps:
# output:

def update_it(new_list, item, amount)
    
    new_list[item] = amount
    
    new_list
end

update_it(new_list, "Ice-cream", 1)

p new_list

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print_pretty(new_list)
    puts "Grocery List:"
    new_list.each do |item, amount|
        
    puts "#{item}: #{amount}"
  end
end
    
print_pretty(new_list)
