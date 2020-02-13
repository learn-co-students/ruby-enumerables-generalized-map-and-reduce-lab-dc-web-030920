# Your Code Here
def map(source_array)
  index = 0
  new = []
  while index < source_array.length do
    new.push(yield(source_array[index]))
    index += 1
  end
  new
end

def reduce(source_array, starting_point = nil)

  if starting_point
    i = 0
    sum = starting_point
  else
    sum = source_array[0]
    i = 1
  end
  
  while i < source_array.length do
    sum = yield(sum, source_array[i])
    i += 1
  end
  sum
end
