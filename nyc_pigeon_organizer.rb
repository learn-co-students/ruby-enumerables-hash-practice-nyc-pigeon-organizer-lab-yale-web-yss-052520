#Method to get all names in a nested hash, returning an array of all pigeon names by iterating over hash and flattening result with no duplicates
def name_getter(data)
  names = []
  #iterate over each category and attribute and add them to a names array
  for category_key in data.keys
      for attribute_key in data[category_key].keys
          names.push(data[category_key][attribute_key])
      end
  end
  names = names.flatten.uniq #flatten array and remove duplicates
  names
end

#Method to create a hash given an array of elements that contains subhashes with color, gender, and living location for each element
def hash_maker(array)
  hash = {}
  array.each do |element|
      hash[element] = {:color => [], :gender => [], :lives => []}
  end
  hash
end

def nyc_pigeon_organizer(data)
  #getting an array of all pigeon names
  pigeon_names = name_getter(data)

  #making a hash with necessary categories for each pigeon
  pigeon_hash = hash_maker(pigeon_names)
  pigeon_hash

  #going through data and adding attributes for each pigeon
  for name in pigeon_names
    for category_key in data.keys
      for attribute_key in data[category_key].keys
        if data[category_key][attribute_key].include?(name)
          if category_key == :color
            pigeon_hash[name][:color].push(attribute_key.to_s)
          elsif category_key == :gender
            pigeon_hash[name][:gender].push(attribute_key.to_s)
          elsif category_key == :lives
            pigeon_hash[name][:lives].push(attribute_key.to_s)
          end
        end
      end
    end
  end
  pigeon_hash
end
