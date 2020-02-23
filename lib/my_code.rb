# Your Code Here
def map(array)
  new = []
  i = 0
  while i < array.length do
    each_element = array[i] # <== Unique work
    new.push(yield(each_element))
    i += 1
  end
  new
end

def reduce(array, starting_point=nil)
if starting_point
  total = starting_point
  i = 0
else
  total = array[0]
  i = 1
end
while i < array.length do
  total = yield(total, array[i])
  i += 1
end
total
end
