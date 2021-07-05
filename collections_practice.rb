# your code goes here
  
def begins_with_r(element)
  element.all? do |element|
  element.start_with?("r")
  end
end


def contain_a(array)
  new_array = []
  array.collect do |x|
    if x.include?("a")
      new_array << x
    end
  end
  new_array
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      word
    end
  end
end


def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
  array
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end


def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property,value|
      object[property] = value
    end
  end
end


def find_cool(cool)
  if cool[1].values[1] == "cool"
    [cool[1]]
  end
end


def organize_schools(schools)
  array = []
  schools.values.to_a.each do |value|
    array << value.values
  end
  school_array = array.flatten.uniq.sort

  h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end