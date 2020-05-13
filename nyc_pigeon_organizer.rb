def nyc_pigeon_organizer(data)
  organized = {}
  
  data.each do |cgl, cgl_descriptions|
    cgl_descriptions.each do |description, array|
      array.each do |pigeon_name|
        if organized[pigeon_name] == nil
          organized[pigeon_name] = {}
        end
        if organized[pigeon_name][cgl] == nil
          organized[pigeon_name][cgl] = []
        end
        organized[pigeon_name][cgl].push(description.to_s)
       end 
     end
   end 
   return organized
end