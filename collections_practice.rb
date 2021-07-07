# your code goes here
def begins_with_r(array)
  first_letter_string = ""
  array.each do |string|
    first_letter_string << string[0]
  end
  if first_letter_string == "rrr"
    true
  else
    false
  end
end

def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.find do |string|
    string[0] == "w" && string[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.group_by(&:itself)
    .map{|key,val| key.merge(count: val.length)}
end

def merge_data(nds1,nds2)
  i = 0
  while i < nds1.length
    nds2.each do |element|
      element.each do |key,val|
        if nds1[i].has_value?(key)
          nds1[i].merge!(val)
        end
      end
    end
  i += 1
  end
  return nds1
end

def find_cool(array)
  i = 0
  result = [];
  while i < array.length do
    array[i].collect do |key,val|
      if val == "cool"
        result << cool[i]
      return result
      end
    end
    i += 1
  end  
end

def organize_schools(hash)
  hash.each_with_object({}) do |(name,data), res|
    (res[data[:location]] ||=[]) << name
  end
end
