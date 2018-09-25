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

  # all drivers that drove over the mileage cap
  def mileage_cap(distance)
    eligible_rides = Ride.all.select { |r| r.distance > distance }
    eligible_rides.map { |r| r.driver }.uniq
  end

end
