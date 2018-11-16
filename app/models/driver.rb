require 'pry'
class Driver

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#all rides a driver has made
  def driver_rides
    Ride.all.select {|ride| ride.driver == self}
  end

#all passengers a driver has driven
  def driver_passengers
    driver_rides.map{|ride| ride.passenger}
  end

  def driver_passengers_name
    driver_passengers.map{|passenger| passenger.name}
  end

end
