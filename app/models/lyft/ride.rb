class Ride

  attr_accessor :distance, :passenger, :driver

  @@all = []

  def initialize(distance, passenger, driver)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger
    @passenger
  end

  def driver
    @driver
  end

  def self.average_distance
    Ride.all.inject(0) do |t, r|
      t + r.distance.to_f / all.count
    end
  end





end
