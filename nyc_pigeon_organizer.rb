def build_name_array(name, data)
  color_array = []
  data[:color].each do |(key, value)|
    if value.member? name
    color_array << key.to_s 
   end 
  end
  gender_array = []
  data[:gender].each do |(key, value)|
    if value.member? name
    gender_array << key.to_s 
   end 
  end
  lives_array = []
  data[:lives].each do |(key, value)|
    if value.member? name
    lives_array << key.to_s 
   end
  end
  value_hash = {
    :color => color_array,
    :gender => gender_array,
    :lives => lives_array
  }
  value_hash
end
  
  

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  # Search through data to find the first name 
  # Take that name and use it as a key in the hash 
  name_list = []
  data[:gender].map do |(key, value)|
    value.collect { |element| name_list << element}
  end
  name_list = name_list.uniq 
  name_list.each do |name|
    new_hash[name] = build_name_array(name, data)
  end
  new_hash
end


# Search through data to find the first name 
  # Take that name and use it as a key in the hash 
# use helper functions if you want
# possibly a function to say

# You could take each element of a spefic color, and if you see a name, 

# I'll want to make an array for color, gender, and lives for each person 
# These can all be helper functions

  
  