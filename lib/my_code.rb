# Your Code Here
def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length
  new_array.push(yield(source_array[i]))
  i += 1
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
 i = 0 
  while i < source_array.length
   total = yield(source_array[i], starting_point)
  if source_array[i] == false
    total = false
  else if source_array[i] == true
    total true
  else
  total += source_array[i]
  end
  i += 1
  end
return total
end