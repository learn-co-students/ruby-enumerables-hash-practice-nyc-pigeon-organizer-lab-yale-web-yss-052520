require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  # create the empty hash 
  new_hash = {}
  
  # populate the hash with keys that are names from gender & values that are hashes of color, gender, and lives
  data[:gender].each{ |key, val|
    val.each{ |name|
      new_hash[name] = {
        color: [],
        gender: [],
        lives: []
      }
    }
  }
  
  # puts new_hash
  # loop over each of the keys in the original array, and the key strings within them, and assign it to the proper pigeon in the new array
  data.each do |category, hash|
    # binding.pry
    hash.each do |attribute, nameList|
      nameList.each do |name|
        new_hash[name][category] << attribute.to_s 
      end 
    end
  end
  pp new_hash
  
end

#     pigeon_data = {
#       :color => {
#         :purple => ["Theo", "Peter Jr.", "Lucky"],
#         :grey => ["Theo", "Peter Jr.", "Ms. K"],
#         :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#         :brown => ["Queenie", "Alex"]
#       },
#       :gender => {
#         :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#         :female => ["Queenie", "Ms. K"]
#       },
#       :lives => {
#         "Subway" => ["Theo", "Queenie"],
#         "Central Park" => ["Alex", "Ms. K", "Lucky"],
#         "Library" => ["Peter Jr."],
#         "City Hall" => ["Andrew"]
#       }
#     }
    
# nyc_pigeon_organizer(pigeon_data)
