def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end 

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)  
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end  
end  

def remove_non_strings(array)
	array.delete_if {|string| string.class != String}
end

def count_elements(array)
  count_array = [ ] 
  
  array.each do |item|
   item.each do |key, value|
    new_hash = {  }
    new_hash[:name] = value
    new_hash[:count] = array.count(item)
      if count_array.include?(new_hash) != true
        count_array.push(new_hash)
      end
    end
  end  
  count_array  
end 
