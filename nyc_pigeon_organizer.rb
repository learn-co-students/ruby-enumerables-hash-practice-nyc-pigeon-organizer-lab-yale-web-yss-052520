require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_name_hash={}
  pigeon_name_hash=data.reduce(nil) do |memo, (attribute_type, attribute_value_hash)|
    memo = pigeon_name_hash if !memo
    memo = attribute_value_hash.reduce(nil) do |memo2, (attribute_value, array_of_names)|
      memo2 = memo if !memo2
      array_of_names.each do |e|
        memo2[e]={} if !memo2[e]
        memo2[e][attribute_type]=[] if !memo2[e][attribute_type]
        memo2[e][attribute_type].push(attribute_value.to_s)
      end
    memo
    end
  end
  pigeon_name_hash
end
