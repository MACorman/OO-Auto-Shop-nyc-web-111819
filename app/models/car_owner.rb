class CarOwner

  attr_reader :name, :car

  @@all = []

  def initialize(name)
    @name = name
    @car = car
    @@all << self
  end

  def self.all
    @@all
  end

  def all_my_cars
    Car.all.select {|c| c.owner == self}
  end

  def all_my_mechanics
    all_my_cars.map {|c| c.mechanic}
  end 

  def self.av_cars_owned
    (Car.all).length.to_f / @@all.length
  end


end
