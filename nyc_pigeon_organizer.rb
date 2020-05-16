def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |category, dict|
    dict.each do |adjective, array|
      array.each do |bird|
        if not pigeon_list[bird]
          pigeon_list[bird] = {}
        end
        if not pigeon_list[bird][category]
          pigeon_list[bird][category] = []
        end
        pigeon_list[bird][category].push(adjective.to_s)
      end
    end
  end
  
  pigeon_list
end