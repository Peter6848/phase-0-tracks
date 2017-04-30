# RELEASE 0
# method arguments: array of integers, search integers
# output: index of search integer
# can only use .length .each

def simple_search(arr, digit)
# compare each element of arr with digit
  index = 0
  while index < arr.length
# if match, return index of digit
    if arr[index] == digit
      return index
    else
      index += 1
    end
# if no match, return nil
  end
  return nil
end

arr = [3, 5, 6, 2, 1]
target = 3
p simple_search(arr, target)

# RELEASE 1
# input: digit, the number of fibonacci calculations to produce
# output: array of fibonacci numbers

# fibonacci + (fibonacci + index - 1)
# output << fibonacci

def fib(index)
  output = [0, 1]
  i = 1
  index = index - 2
  index.times do
    z = output[i] + output[i - 1]
    output << z
    i += 1
  end
  output
end

p fib(7)

# RELEASE 2
# BUBBLE SORT
# steps through array
# compares elements and swaps if left index value is greater than right index value
# repeats until no swaps needed

def bubble_sort(array)
    swapped = false              # swapped set to false 
    array[0...-1].each_with_index do |el, i|    # swap elements for length minus one (the number of spaces between elements)
      if el > array[i + 1]    
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true                    # swapped is set to true whenever the array was found not completely sorted 
      end
    end
    bubble_sort(array) if swapped                  # if swapped remained false (no elements unsorted) break
  end
  array                                # return array
end 

array = [4, 3, 2]
p bubble_sort(array)