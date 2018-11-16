require 'pry'
class Ride

  @@all = []

  attr_accessor :distance, :driver, :passenger

  def initialize(distance, driver, passenger)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

#showing a ride
  def rides
    Ride.all.select {|ride| ride == self}
  end

#showing passenger for a particular ride
  def passenger_obj
    rides.map {|ride| ride.passenger}
  end

  def driver_obj
    rides.map {|ride| ride.driver}
  end

  def mileage_obj
    rides.map {|ride| ride.distance}
  end


#Don't look at the below. Copied over from Trips etc.



  def passenger_object
    Passenger.all.select {|ride| ride.passenger == passenger}
  end

  def rides_by_driver
    Ride.all.select{|trip| trip.passenger == passenger}
  end

  def passenger_array
    Ride.all.select {|trip| trip.passenger}
  end

  def passengers_by_trip
    Ride.all.find{|trip| trip.passenger == passenger}
  end

end
