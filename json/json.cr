require "json"

puts true.to_json
puts "askn".to_json
puts 1.to_json
puts 12.14.to_json
puts ["apple", "peach", "pear"].to_json
puts Hash{"apple" => 5, "lettuce" => 7}.to_json

# json_object
# json_array
# field
result = JSON.build do |json|
	json.object do
  	json.field "address", "Crystal Road 1234"
    json.field "location" do
      json.array do
        json.number 12.3
        json.number 34.5
      end
    end
	end
end
puts result # => %({"address":"Crystal Road 1234","location":[12.3,34.5]})

# ---

json = %({"page": 1, "fruits": ["apple", "peach"]})
puts JSON.parse json

class Location
  JSON.mapping({
    lat: Float64,
    lng: Float64,
  })
end

# emit_null: default null
#  nilable: nil olabilir
#
class House
  JSON.mapping({
    address:  String,
    location: {type: Location, nilable: true},
    time:     {type: Time, converter: Time::Format.new("%F"), emit_null: true, key: "value"},
  })
end

house = House.from_json(%({"address": "Crystal Road 1234", "location": {"lat": 12.3, "lng": 34.5}, "value": "2014-10-31 23:37:16"}))
p house
# <House:0x1022a1c90 @address="Crystal Road 1234", @location=#<Location:0x10229ab20 @lat=12.3, @lng=34.5>, @time=2014-10-31 00:00:00>
