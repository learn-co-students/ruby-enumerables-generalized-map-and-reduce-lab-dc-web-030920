# Your Code Here
def map (array)
  result = []
  index = 0 
  while index < array.length do 
    result.push(yield(array[index]))
    index += 1 
  end
result
end

def reduce(array, sv= nil)
if sv 
  total = sv
  index = 0 
else 
  total = array[0]
  index = 1 
end 
while index < array.length do 
  total = yield(total, array[index])
  index += 1 
end
total
end