require 'pry'
class Guest

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
  Trip.all.select{|trip| trip.guest == self}
  end


  def num_trips
    trips.length
  end

  def listings
    trips.map {|trip| trip.listing}
  end

#not working
  def guest_stay
    listings_array = []
  Trip.all.map {|a| a.guest == self}
  end


  def all_trips
    Trip.all.select {|a| a.guest == self}
  end

 def self.pro_traveller
   Guest.all.select {|g| g.trips.length > 1 }
 end

#return an array with all guests that have taken more than one trip
  def more_trips
    guest_array = Guest.all.select {|trip| trip.guest}
    guest_array
  end

  def self.find_all_by_name(name)
    Guest.all.select {|g| g.name.include?(name)}

  end

end
