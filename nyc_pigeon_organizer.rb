def nyc_pigeon_organizer(data)
  # write your code here!
  
  res = data.each_with_object({}){ |(key, value), final_hash|
    value.each{|inner_key, names|
      names.each{ |name|
        if !final_hash[name]
          final_hash[name] = {}
        end
        if !final_hash[name][key]
          final_hash[name][key] = []
        end
        final_hash[name][key].push(inner_key.to_s)
      }
    }
  }
end
