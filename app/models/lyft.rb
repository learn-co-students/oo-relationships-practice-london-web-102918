class Passenger
  attr_accessor :name
  @@all = []
  def initialize(attributes)
    attributes.each {|key,value| self.send("#{key}=", value)}
    @@all << self
  end

  def self.all
      @@all
  end

  def rides
    Rides.all.select{|r| r.passenger == self}
  end

  def drivers
    rides.map{|r| r.driver}.uniq
  end

  def total_distance
    rides.map{|r| r.distance}.reduce(){|sum, distance| sum+=distance}.round(2)
  end

  def self.premium_members
    Passenger.all.select{|p| p.total_distance > 100}  #.map {|p| [p.total_distance, p]}
  end

end

class Driver
  attr_accessor :name
  @@all = []
  def initialize(attributes)
    attributes.each {|key,value| self.send("#{key}=", value)}
    @@all << self
  end
  def self.all
    @@all
  end

  def passengers
    rides.map{|p| p.passenger}.uniq
  end

  def rides
    Rides.all.select{|r| r.driver == self}
  end

  def total_mileage
    rides.map{|r| r.distance}.reduce(){|sum, distance| sum+=distance}
  end

  def self.mileage_cap(distance)
    Driver.all.select{|d| d.total_mileage > distance}
  end
end

class Rides
  attr_accessor :passenger, :driver, :distance
  @@all = []
  def initialize(attributes)
    attributes.each {|key,value| self.send("#{key}=", value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    rides_distance = Rides.all.map{|r|r.distance}.reduce(){|sum,distance|sum+=distance;}
    (rides_distance/Rides.all.length).round(2)
  end
end
