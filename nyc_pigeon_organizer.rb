require 'pry'
def nyc_pigeon_organizer(data)
  data.each_with_object({}) { |(k1_cat, v1_cathash), name_hash |
    #binding.pry
    v1_cathash.each { | k2_catval, v2_namearr |
      #binding.pry
      v2_namearr.each { |v3_name|
        #binding.pry
        if !name_hash[v3_name]
          name_hash[v3_name] = {}
        end
        if !name_hash[v3_name][k1_cat]
          name_hash[v3_name][k1_cat] = []
        end
        name_hash[v3_name][k1_cat] << k2_catval.to_s
      }
    }
  }
end

=begin
key1 = color
val1 = color hash 
val2 = name array
val3 = name

top_hash > name > category > value

H H A
=end