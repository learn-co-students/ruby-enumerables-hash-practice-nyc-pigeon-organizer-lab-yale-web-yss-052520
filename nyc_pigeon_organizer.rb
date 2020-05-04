def nyc_pigeon_organizer(data)
  # write your code here!
  n = {}

  data.reduce({}) do |memo, (property, inner_hash)|   #property - symbol, such as :color
    inner_hash.reduce({}) do |memo_1, (specific, names)| #specific - symbol, such as :purple  names - array ["Queenie", "Alex"]
      names.each do |name|  #name should be a string
        if n[name] == nil
          crap = {}
          crap[property] = [specific.to_s]
          n[name] = crap
        elsif n[name][property] == nil
          n[name][property] = [specific.to_s]
        else
          n[name][property] << specific.to_s
        end
      end
    memo_1
    end
  memo
  end

  n
end
