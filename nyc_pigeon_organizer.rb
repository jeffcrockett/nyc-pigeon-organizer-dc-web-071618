require 'pry'

def nyc_pigeon_organizer(data)
 organized_pigeons = {}
 data.each do |attribute, hash|
  hash.each do |key, value_array|
    value_array.each do |name|
      organized_pigeons[name] = {:color => [], :gender => [], :lives => []}
    end
  end
 end
 binding.pry
 
 data.each do |attribute, hash|
   hash.each do |key, value_array|
     organized_pigeons.keys.each do |name|
      if value_array.include?(name)
        organized_pigeons[name][attribute] << key
      end
     end
   end
 end
 organized_pigeons
end

