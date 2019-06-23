def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, starting_value = nil)
  if starting_value != nil 
     block = starting_value
      i = 0
   else 
     block = array[0]
     i = 1 
   end 
  while i < array.length 
      block = (yield(block, array[i]))
    i += 1
end 
   return block 
 end 