def nyc_pigeon_organizer(data)
  # write your code here!
list_of_pigeons = []
organized_pigeons = {}

data.each_pair {|key, value|
  data[key].each_pair {|key, value|
    list_of_pigeons.concat(value)
  }
}

list_of_pigeons.uniq!
#from now on, our list_of_pigeons contains one unique name for each pigeon.
#p list_of_pigeons

pcount = 0
while pcount < list_of_pigeons.length do
name = list_of_pigeons[pcount]
organized_pigeons[name] = {}

data.each_pair {|key, value|
  organized_pigeons[name][key] = []
  data[key].each_pair {|innerkey, innervalue|
    organized_pigeons[name][key] << innerkey.to_s if innervalue.include?(name)
  }
}

pcount +=1
end

organized_pigeons
end
