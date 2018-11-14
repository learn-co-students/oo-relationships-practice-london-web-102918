class Listing
attr_accessor :house, :city, :guest
@@all = []

def initialize(guest)
  @guest = guest
  @@all << @guest
end
def self.guests(guest)
  @@all
end
def trips()
  @@
end


end


# #### Listing
# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips
#
#
# ## Deliverables
# You are building an app for an Airbnb competitor
# - your models are listings, guests, trips
#   - a listing (i.e. a house or apartment) has many trips
#     - a listing has a city attribute which is a string of a city name, e.g. 'Seattle'
#   - a guest has many trips
#   - a trip belongs to a listing and a guest
