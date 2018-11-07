class Listing
  attr_accessor :city
  @@all = []

  def initialize(attributes)
    if attributes
     attributes.each {|key, value| self.send("#{key}=", value)}
   end
   @@all << self
  end

  def self.all
    @@all
  end

  def guests
    Trip.all.select{|t| t.listing_city == self}.map{|trip| trip.guest_name.name}
  end

  def trips
    Trip.all.select{|t| t.listing_city == self}
  end

  def trip_count
    Trip.all.select{|t| t.listing_city == self}.length
  end

  def self.find_all_by_city(city)
    @@all.select{|l| l.city == city}
  end

  def self.most_popular
    Listing.all.find{|listing| listing.city == Trip.all.map{|t| t.listing_city}.map{|l| l.city}.max_by{|city| city}}
  end
end #Listing Class

class Guest
  attr_accessor :name
  @@all = []

  def initialize(attributes)
    if attributes
      attributes.each {|key, value| self.send("#{key}=", value)}
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    guest_trips = []
    Trip.all.select do|trip|
      if trip.guest_name == self
        guest_trips << trip
      end
    end
    guest_trips.map{|l| l.listing_city}
  end

  def trips
    guest_trips = []
    Trip.all.select do|trip|
      if trip.guest_name == self
       trip
      end
    end
  end

  def self.pro_traveller
    all_trips = Trip.all.map{|t| t.guest_name.name}
    guests_trip_counts = all_trips.reduce(Hash.new(0)){|guest,trip_count| guest[trip_count] +=1; guest}
    guests_trip_counts.select {|guest,trip_count| trip_count > 1}.keys
  end

  def self.find_all_by_name(name)
    @@all.select {|g| g.name == name}
  end
end #Guest Class

class Trip
  attr_accessor :guest_name, :listing_city
  @@all = []

  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def listing(trip)
    Listing.all.find{|l| l == trip.listing_city}
  end

  def guest(trip)
    Guest.all.find{|g| g == trip.guest_name}
  end
end #Trip Class
