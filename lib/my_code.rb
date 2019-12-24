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
  total = 0 + starting_point
  i = 0 
  while i < source_array.length
  if source_array[i] == false
    total = false
    i += 1
  else
  total = yield(starting_point, source_array[i])
  total += source_array[i]
  end
  i += 1
  end
return total
end