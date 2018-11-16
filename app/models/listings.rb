# create files for your ruby classes in this directory
require 'pry'
class Listing

  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


  def trips
  Trip.all.select{|trip| trip.listing == self}
  end

  def num_trips
    trips.length
  end

#ask Simone
  def guests_at_listing
    #all guests that have stayed at a listing
    trips.map {|listing| listing.guest}
    .uniq
  end

#not working
  def find_all_by_city(city)
    Listings.all.map {|city| city.listing}
  end



end
