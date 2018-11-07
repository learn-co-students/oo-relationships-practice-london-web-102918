require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Lyft Data
# ============
p1 = Passenger.new(name: "Arti")
p2 = Passenger.new(name: "Graça")
p3 = Passenger.new(name: "Megan")

d1 = Driver.new(name: "Jane")
d2 = Driver.new(name: "Greg")
d3 = Driver.new(name: "Julian")

r1 = Rides.new(passenger: p1, driver: d3, distance: 30.0)
r2 = Rides.new(passenger: p3, driver: d1, distance: 11.30)
r3 = Rides.new(passenger: p2, driver: d2, distance: 56.20)
r4 = Rides.new(passenger: p1, driver: d1, distance: 12.78)
r5 = Rides.new(passenger: p3, driver: d2, distance: 1.3)
r6 = Rides.new(passenger: p3, driver: d3, distance: 42.1)
r7 = Rides.new(passenger: p1, driver: d2, distance: 12.0)
r8 = Rides.new(passenger: p3, driver: d2, distance: 24.6)
r9 = Rides.new(passenger: p3, driver: d1, distance: 21.0)


# Airbnb Data
# ============
new_guest = Guest.new(name: "Arti")
new_guest2 = Guest.new(name: "Smarti")
new_guest3 = Guest.new(name: "Megan")
listing = Listing.new(city: "Seattle")
listing3 = Listing.new(city: "Seattle")
listing2 = Listing.new(city: "London")
new_trip = Trip.new(guest_name: new_guest, listing_city: listing)
new_trip2 = Trip.new(guest_name: new_guest2, listing_city: listing)
new_trip3 = Trip.new(guest_name: new_guest2, listing_city: listing2)
new_trip3 = Trip.new(guest_name: new_guest, listing_city: listing2)
new_trip3 = Trip.new(guest_name: new_guest3, listing_city: listing2)

Pry.start
