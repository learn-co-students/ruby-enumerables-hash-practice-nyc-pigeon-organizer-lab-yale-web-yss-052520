def nyc_pigeon_organizer(data)
  require 'pry'
  # write your code here!
  new_hash = {} 
  names = []
  data.each do |key, value|
    value.each do |key2, value2|
      value2.each do |x|
      if !new_hash[x]
        new_hash[x] = {}
      end 
      if !new_hash[x][key]
        new_hash[x][key] = []
      end 
      new_hash[x][key] << key2.to_s
    end 
end
end 
new_hash
end 
