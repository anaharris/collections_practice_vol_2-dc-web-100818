require "pry"

def begins_with_r (array)
  r_arr = []
  array.each do |el|
    if el.start_with?("r")
      r_arr << el
    end
  end
    if r_arr.length == array.length
      return true 
    else
      return false 
    end
end


def contain_a (array)
  a_arr = []
  array.each do |el|
    if el.include?("a")
      a_arr << el
    end
  end
  return a_arr
end


def first_wa (array)
  array.find do |el|
    if el.class == String
      el.start_with?("wa")
    end
  end
end


def remove_non_strings (array)
  array.delete_if do |el|
    el.class != String
  end
end


def count_elements (array)
  h = Hash.new(0)
  count = []
  array.each do |v|
    h[v[:name]] += 1 
  end
  h.each do |name, num|
    new_hash = {}
    new_hash[:count] = num 
    new_hash[:name] = name
    count << new_hash
  end
  return count
end


def merge_data (arg1, arg2)
  sorted = []
  arg1.each do |names|
     arg2.each do |info|
       info.each do |person, data|
         if names.values[0] == person
           sorted << data.merge(names)
         end
     end
    end
  end
  return sorted
end


def find_cool (arr)
  cool_arr = []
  arr.each do |hash|
    hash.each do |keys, values|
      if values == "cool"
        cool_arr << hash 
      end
    end
  end
  return cool_arr
end


def organize_schools (arg)
  arr_nyc = []
  arr_sf = []
  arr_chicago = []
  hash = {}
  arg.each do |school_name, info|
    info.each do |loc_key, location|
      if location == "NYC"
        arr_nyc << school_name
      elsif location == "SF"
        arr_sf << school_name
      else 
        arr_chicago << school_name
      end
    end
  end
  hash["NYC"] = arr_nyc
  hash["SF"] = arr_sf
  hash["Chicago"] = arr_chicago
  return hash
end
