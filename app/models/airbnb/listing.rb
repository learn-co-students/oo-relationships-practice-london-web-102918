class Listing

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |t|
      t.listing == self
    end
  end

  def guests
    trips.map do |t|
      t.guest
    end
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    Listing.all.select do |l|
      l.city == city
    end
  end

  def self.most_popular
    Trip.all.map do |t|
      t.listing
    end.max_by do |t|
      t.trip_count
    end
  end

end
