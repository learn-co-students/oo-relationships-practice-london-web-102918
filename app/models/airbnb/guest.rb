class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |t|
      t.guest == self
    end
  end

  def listings
    trips.map do |t|
      t.listing
    end
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    Trip.all.map do |t|
      t.guest
    end.select do |t|
      t.trip_count > 1
    end.uniq
  end

  def self.find_all_by_name(name)
    Guest.all.select do |g|
      g.name == name
    end
  end

end
