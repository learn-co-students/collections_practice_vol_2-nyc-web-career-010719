def begins_with_r(some)
  i = 0
  while i < some.length
   i += 1
    some.each do |smtn|
     if !smtn.start_with? "r"  
       return false
     
  
end
end
return true
end
end

def contain_a(elements)
  newArr = []
  i = 0
  while i < elements.length 
  elements.each do |smtn|
    i += 1
    if smtn.include? "a"
      newArr.push(smtn)
end
end
return newArr
end
end

def first_wa(elements)
  elements.detect do |smtn|
    smtn[0,2] == "wa"
    end
end

def remove_non_strings(array)
  array.delete_if do |smtn|
    smtn.is_a?(String) == false
  end
end

	def count_elements(array)

     array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end


 def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

 def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end