class TodoList

attr_accessor :get_items

  def initialize(list_array)
    @get_items = list_array

  end

  def add_item(new_item)
    @get_items.push(new_item)
  end

  def delete_item(some_item)
    @get_items.each do |item|
      if some_item == item
        @get_items.delete(item)
      end
    end
  end

  def get_item(index_number)
    p @get_items[index_number]
  end
end

list = TodoList.new(["do the dishes", "mow the lawn"])
list.add_item("mop")
list.delete_item("do the dishes")
list.get_items
list.get_item(0)