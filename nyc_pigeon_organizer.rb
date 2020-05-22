require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  # identify pigeon names as top levels, copy into hash as keys
  organized_pigeon = {}
  name_array = []
  data[:color].each do |key, value|
    value.each do |name|
      name_array << name
    end
  end
  name_array.uniq.map do |name|
    organized_pigeon[name] = {color: [], gender: [], lives: []}
  end
  
  
  organized_pigeon.collect do |org_name, org_value| # iterating through each pigeon name
  
    # map color info into new hash
    data[:color].each do |key, value| # iterating over original color data
    
      value.each do |name| # iterating over names in og color data
        if org_name == name
          organized_pigeon[org_name][:color] << "#{key}"
        end
      end
    end
    
    # map gender info into new hash
    data[:gender].each do |key, value|
      value.each do |name| # iterating over names in og color data
        if org_name == name
          organized_pigeon[org_name][:gender] << "#{key}"
        end
      end
    end
    
    # map living info into new hash
    data[:lives].each do |key, value|
      value.each do |name| # iterating over names in og color data
        if org_name == name
          organized_pigeon[org_name][:lives] << "#{key}"
        end
      end
    end
  end
  
  
  organized_pigeon
end

