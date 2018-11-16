require 'pry'
class Trip

  @@all = []

  attr_accessor :listing, :guest, :trip_name

  def initialize(listing, guest, trip_name)
    @listing = listing
    @guest = guest
    @trip_name = trip_name
    @@all << self
  end

#Working
  def self.all
    @@all
  end

#showing all listings for a trip
  def listing_objects
    Listing.all.select {|trip| trip.listing == listing}
  end

  def listings_by_trip
    Trip.all.select{|trip| trip.trip == self.trip}
  end

  def listings_array
    listings = []
    Trip.all.select {|trip| trip.listing}


  end

  def guests_by_trip
    Trip.all.find{|trip| trip.guest == guest}
  end


end
