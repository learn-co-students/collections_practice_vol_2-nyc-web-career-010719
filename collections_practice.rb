require "pry"


def begins_with_r(array)
   r_count = 0
   array.each do |element|
         if element[0] == "r"
             r_count += 1
         end
   end
   if r_count == array.length
       return true
   else
       return false
   end
end



def contain_a(array)
   a_array = []
   array.each do |element|
       if element.include?("a")
           a_array << element
       end
   end
   a_array
end


def first_wa(array)
   wa_element = ""
   array.each do |element|
       if wa_element == "" && element.is_a?(String)
           if element.start_with?("wa")
               wa_element = element
           end
       end
   end
   wa_element
end


def remove_non_strings(array)
    no_strings = []
    array.each do |element|
        if element.is_a?(String)
            no_strings << element
        end
    end
    no_strings
end




def count_elements(array)
    counting_array = []
    counter = 0
    array.each do |element|
        counting_array << element
        counting_array[counter][:count] = array.count(element)
        counter += 1
    end
    counting_array.uniq! {|x| x.first}
end




def merge_data(keys, data)
    array_counter = 0
    hash_counter = 0
    new_array = []
    data.each do |hash|
        hash.each do |person, person_data|
          new_keys = keys[array_counter].keys
          hash[person][new_keys[hash_counter]] = keys[array_counter][new_keys[hash_counter]]

          while hash_counter < keys[array_counter].length - 1
              hash_counter += 1
              hash[person][new_keys[hash_counter]] = keys[array_counter][new_keys[hash_counter]]
          end

          hash_counter = 0
          array_counter += 1
          new_array << person_data
        end
    end

    new_array
end



def find_cool(cool)
  cool_set = []
  cool.each do |set|
    set.each do |key, value|
      if value == "cool" && value.length == 4
        cool_set << set
      end
    end
  end
  cool_set
end



def organize_schools(schools)
    locations = {}
    schools.each do |bootcamp, hash|
      hash.each do |key, value|
        if key == :location
            locations[value] = []
        end
      end
    end
    schools.each do |bootcamp, hash|
      hash.each do |key, value|
        locations.each do |city_key, city_value|
            if value == city_key
              city_value << bootcamp
            end
      end
      end
    end
    locations
end
