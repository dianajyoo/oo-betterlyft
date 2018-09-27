class Driver

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # all rides that a specific driver has made
  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  # passengers that a specific driver has driven
  def passenger_names
    self.rides.map { |ride| ride.passenger }.uniq
  end

  # calculates the total distance that a specific driver made in total
  def total_distance
    total = 0
    self.rides.each do { |ride| total += ride.distance }
    total
  end

  def self.mileage_cap(distance)
    self.all.select { |driver| driver.total_distance > distance }
  end

end
