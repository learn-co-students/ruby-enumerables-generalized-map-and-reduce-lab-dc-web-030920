# Your Code Here

def map(source_array) 
  
  
  index = 0 
  new_arr = []
  while index < source_array.length do
    new_arr << yield(source_array[index])
    index += 1 
  end
  new_arr
end

def reduce(source_array, starting_value = nil)
  # index = 0 
  # total = starting_value
  if starting_value
    total = starting_value
    index = 0 
  else
    total = source_array[0]
    index = 1 
    
  end
  while index < source_array.length do
    total = yield(total, source_array[index])
    index += 1 
  end
  total
end 
  