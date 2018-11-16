require 'pry'
class Passenger

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#all rides taken by one passenger
  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

#rides taken by one passenger. This returns the same as the above.
  def num_rides
    rides.length
  end

#drivers that a particular passenger has ridden with
  def drivers
    rides.map {|ride| ride.driver}
  end


  def num_rides
   rides.inject(0){|sum, s| sum += s}.to_f / rides.length.to_f
 end

#NOT CORRECT - distance a passenger has travelled
  # def total_distance
  #   sum_of_distance = 0
  #   distance_array = rides.map|ride| ride.distance_total
  #   distance_array.each do |ride|
  #     sum_of_distance += ride
  #   end
  # end

  def total_distance
    sum_of_distance = 0
    rides.map {|n| n.distance}
    each do |n| n += 1
    sum_of_distance
  end
  end
end
