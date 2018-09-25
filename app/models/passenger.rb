class Passenger

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # returns array of ride instances that specific passenger has been on
  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  # return array of driver instances that specific passenger rode with
  def drivers
    self.rides.map { |ride| ride.driver }.uniq
  end

  # return total distance that specific passenger has travelled
  def total_distance
    distances = self.rides.map { |ride| ride.distance }
    distances.inject(:+).to_f
  end

  # return passengers who travelled over 100 miles in total
  def premium_members
    # Ride.all.map { |ride| ride.passenger if self.total_distance > 100 }
    self.all.select { |passenger| passenger.total_distance > 100 }
  end

end
