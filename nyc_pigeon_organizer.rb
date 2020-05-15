def nyc_pigeon_organizer(data)
new_organizer = {}
  data.each do |attribute, hash|
    hash.each do |type, array|
      array.each do |name|
        
        if !new_organizer.has_key?(name)
          new_organizer[name] = {}
        end

        if !new_organizer[name].has_key?(attribute)
          new_organizer[name][attribute] = []
        end

        if !new_organizer[name][attribute].include?(type)
          new_organizer[name][attribute] << type.to_s
        end
      end
    end
  end
  new_organizer
end 