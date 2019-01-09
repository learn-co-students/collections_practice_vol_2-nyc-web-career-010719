# your code goes here
def begins_with_r(tools)
  
  tools.each do |i|
    if i.start_with?('r')==false
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do |i|
    i.include?('a')
  end
end

def first_wa(array)
  
  array.each do |i|
    if i.is_a?(String) &&  i.start_with?('wa')
      return i
    end
  end
  
end

def remove_non_strings(array)
  array.select do |i|
    i.is_a?(String)
  end
end


def count_elements(array)
  # array.each do |el|
  #   array.count(el)
  # end
  # array.each_with_object(Hash.new(0)) do |hash, item|
  #   # h2[h1[:name]] += 1 
  #   if hash[item]
  #     hash[item] += 1
  #     else
  #       hash[item] = 0
  #   end
  # end
  # array.uniq.map { |x| [x, array.count(x)] }.to_h
  h = Hash.new(0)
  array.each { |l| h[l] += 1 }
  h.to_a
end