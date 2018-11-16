require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1=Driver.new('Paolo')
driver2=Driver.new('Louise')
driver3=Driver.new('Peter')
driver4=Driver.new('Jolie')

passenger1=Passenger.new('Roland')
passenger2=Passenger.new('Ruth')
passenger3=Passenger.new('Richard')
passenger4=Passenger.new('Rosie')


rideA=Ride.new(50, driver1, passenger1)
rideB=Ride.new(60, driver2, passenger1)
rideC=Ride.new(30, driver3, passenger2)
rideD=Ride.new(50, driver4, passenger3)
rideE=Ride.new(45, driver4, passenger3)
rideF=Ride.new(20, driver4, passenger4)





#guest1 = Guest.new("Lucy")
#guest2 = Guest.new("Ruby")
#guest3 = Guest.new("Eric")
#guest4 = Guest.new("Pluto")

#listing1 = Listing.new("New York")
#listing2 = Listing.new("Bogota")
#listing3 = Listing.new('Bangalore')
#listing4 = Listing.new('Oslo')
#listing5 = Listing.new('Oslo')

#tripA = Trip.new("trippoloA", listing1, guest1)
#tripB = Trip.new("trippoloB", listing4, guest2)
#tripC = Trip.new("trippoloC", listing3, guest1)
#tripD = Trip.new("trippoloD", listing2, guest3)
#tripE = Trip.new("trippoloE", listing4, guest4)

binding.pry
"amazing"
