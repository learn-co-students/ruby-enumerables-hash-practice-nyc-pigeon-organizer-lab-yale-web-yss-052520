def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list ={}
  data.each do |outer, middle|
    data[outer].each do |attr, names|
      data[outer][attr].each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][outer]
          pigeon_list[name][outer] = []
        end
        pigeon_list[name][outer] << attr.to_s
      end
    end
  end
  pigeon_list
end
