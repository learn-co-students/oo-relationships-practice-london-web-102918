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

# Bakery Data
# ============
# b1 = Bakery.new(name: "Lola")
# b2 = Bakery.new(name: "Rainbow")
# b3 = Bakery.new(name: "NoMoo")
# b4 = Bakery.new(name: "Glutton")
#
# i1 = Ingredient.new(name: "Eggs", calorie_count: 100)
# i2 = Ingredient.new(name: "Almond Milk", calorie_count: 130)
# i3 = Ingredient.new(name: "Coconut Flour", calorie_count: 400)
# i4 = Ingredient.new(name: "Oat Cream", calorie_count: 227)
# i5 = Ingredient.new(name: "Apple", calorie_count: 321)
#
# d1 = Dessert.new(name: "Apple Cake", bakery_name: b1, ingredient_name: [i1, i5, i3])
# d2 = Dessert.new(name: "Orange Cake", bakery_name: b1, ingredient_name: [i2, i1, i3, i4])
# d3 = Dessert.new(name: "Peanut Butter Cookies", bakery_name: b1, ingredient_name: [i4, i1, i5, i3, i2])
# d4 = Dessert.new(name: "Pineapple Cake", bakery_name: b2, ingredient_name: [i3, i4])
# d5 = Dessert.new(name: "Chocolate Cake", bakery_name: b2, ingredient_name: [i1, i2])
# d6 = Dessert.new(name: "Spinach Roll", bakery_name: b2, ingredient_name: [i4, i5, i2])
# d7 = Dessert.new(name: "Chickpea Bites", bakery_name: b3, ingredient_name: [i1, i3])
# d8 = Dessert.new(name: "Red Cake", bakery_name: b3, ingredient_name: [i5, i1])
# d9 = Dessert.new(name: "Blue Cake", bakery_name: b3, ingredient_name: [i4, i1])
# d10 = Dessert.new(name: "Decadent Cake", bakery_name: b4, ingredient_name: [i3, i5])
# d11 = Dessert.new(name: "Greedy Cake", bakery_name: b4, ingredient_name: [i2, i1, i5, i3])


Pry.start
