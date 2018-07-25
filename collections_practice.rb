def begins_with_r(array)
  i = 0 
  while i < array.length 
  if array[i].start_with?("R")
    i += 1 
  else 
    false 
  end 
end 
