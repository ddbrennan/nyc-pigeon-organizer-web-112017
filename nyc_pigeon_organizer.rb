
def nyc_pigeon_organizer(data)
  pigeons_by_name = {}
  data.each do |key, descriptor|
    descriptor.each do |names|
      names.last.each do |name|
        if pigeons_by_name[name]
          if pigeons_by_name[name][key]
            pigeons_by_name[name][key] << names.first.to_s
          else
            pigeons_by_name[name][key] = [names.first.to_s]
          end
        else
          pigeons_by_name[name] = {}
          pigeons_by_name[name][key] =[names.first.to_s]
        end
      end
    end
  end
  pigeons_by_name
end
