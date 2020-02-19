# Your Code Here

def map(source_array)
    new_array = []
    i = 0
    while i < source_array.count do
        new_array << yield(source_array[i])
        i += 1
    end
    return new_array
end


def reduce(array, starting_value = nil)
   if starting_value
    sum_num = starting_value
    i = 0
   else
    sum_num = array[0]
    i = 1
   end

   while i < array.count do
    sum_num = yield(sum_num, array[i])
    i += 1
   end
   return sum_num
end

