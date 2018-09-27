require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
Passenger.new("Kelly")
Passenger.new("Sarah")
Passenger.new("Kim")

Driver.new("Bob")
Driver.new("Larry")

Ride.new('Bob', 'Sarah', 100)
Ride.new('Larry', 'Kelly', 350)
Ride.new('Larry', 'Kim', 200)
Ride.new('Bob', 'Kim', 500)


binding.pry

puts 'hello'
