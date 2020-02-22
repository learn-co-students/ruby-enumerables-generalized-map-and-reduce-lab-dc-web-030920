def map(source_array)
  array = []
  i = 0
  while i < source_array.length
    array << yield(source_array[i])
    i += 1
  end
  array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0
    num1 = starting_point
  else
    num1 = source_array[0]
    i = 1
  end
  while i < source_array.length do
    num1 = yield(num1, source_array[i])
      i += 1
  end
  return num1
end