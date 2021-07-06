def map(src)
  i = 0
  newArr = []
  while i < src.count do
    newArr.push(yield(src[i]))
    i+=1
  end
  newArr
end

#(reduce([1, 2, 3, -9]){|n| n * -1})

def reduce(src, starting_point = 0)
  newVal = true
  if starting_point > 0
    newVal = starting_point
    i = 0
  else
    newVal = src[0]
    i = 1
  end
  while i < src.count do
    newVal = yield(newVal, src[i])
    i+=1
  end
  return newVal
end
