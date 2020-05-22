require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!

  new_hash = {}

  data.each do | attributes, option_vals|
    option_vals.each do |options, names|
      names.each do |name|
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][attributes]
          new_hash[name][attributes] = []
        end
        new_hash[name][attributes].push options.to_s
      end
    end
  end
  new_hash 
end
