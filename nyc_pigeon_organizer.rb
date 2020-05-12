
def nyc_pigeon_organizer(data)
 nh = {} 
 data.each do |att, attset| 
   attset.each do |cat, catset| 
     catset.each do |pig| 
        nh[pig] = { } 
     end 
   end 
  end 
  data.each do |att, attset| 
    attset.each do |cat, catset| 
      catset.each do |pig| 
        nh[pig][att] = [] 
      end 
    end 
  end 
  data.each do |att, attset| 
    attset.each do |cat, catset| 
      catset.each do |pig| 
        nh[pig][att] << cat.to_s  
      end 
    end 
  end 
  puts nh 
  return nh 
end

k = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(k)

#ruby nyc_pigeon_organizer.rb 