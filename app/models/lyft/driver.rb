class Driver

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |r|
      r.driver == self
    end
  end

  def passengers
    rides.map do |r|
      r.passenger
    end
  end

  def total_distance
    rides.inject(0) do |t, r|
      t + r.distance
    end
  end

  def self.mileage_cap(distance)
    Driver.all.select do |d|
      d.total_distance > distance
    end
  end





end
