class Ride

  attr_accessor :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def average_distance
    total = 0
    self.all.each { |ride| total += ride.distance }

    total.to_f / self.all.size
  end

end
