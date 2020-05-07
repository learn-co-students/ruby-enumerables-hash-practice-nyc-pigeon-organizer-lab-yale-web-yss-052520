require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key,val| 
    val.each do |attr_val, names| 
      for name in names do
        new_hash[name] = {} if !new_hash[name]
        new_hash[name][key] = [] if !new_hash[name][key]
        new_hash[name][key].push(attr_val.to_s)
      end 
    end 
  end 
  new_hash
end
