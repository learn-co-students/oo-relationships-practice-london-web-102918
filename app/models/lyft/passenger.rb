class Passenger

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
      r.passenger == self
    end
  end

  def drivers
    rides.map do |r|
      r.driver
    end
  end

  def total_distance
    rides.inject(0) do |t, r|
      t + r.distance
    end
  end

  def self.premium_members
    Passenger.all.select do |p|
      p.total_distance > 100.0
    end
  end

end
