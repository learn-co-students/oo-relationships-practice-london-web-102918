require_relative '../config/environment.rb'

# don = Passenger.new("Don")
# carl = Passenger.new("Carl")
# brenda = Passenger.new("Brenda")
# phil = Passenger.new("Phil")
#
# sue = Driver.new("Sue")
# john = Driver.new("John")
# ella = Driver.new("Ella")
# cabron = Driver.new("Cabron")
#
# r1 = Ride.new(7.2, don, sue)
# r2 = Ride.new(5.3, carl, sue)
# r3 = Ride.new(9.4, carl, john)
# r4 = Ride.new(11.3, brenda, john)
# r5 = Ride.new(99.9, brenda, ella)
# r6 = Ride.new(3.4, brenda, cabron)
# r7 = Ride.new(6.9, phil, cabron)

sues_place = Listing.new("Sues Place", "Karachi")
johns_place = Listing.new("Johns Place", "Madrid")
ellas_place = Listing.new("Ellas Place", "London")
cabrons_place = Listing.new("Cabrons Place", "London")

don = Guest.new("Don")
carl = Guest.new("Carl")
brenda = Guest.new("Brenda")
phil = Guest.new("Phil")

tr1 = Trip.new(sues_place, don)
tr2 = Trip.new(sues_place, carl)
tr3 = Trip.new(johns_place, carl)
tr4 = Trip.new(johns_place, brenda)
tr5 = Trip.new(ellas_place, brenda)
tr6 = Trip.new(cabrons_place, brenda)
tr7 = Trip.new(cabrons_place, phil)
tr8 = Trip.new(cabrons_place, carl)

Pry.start
