class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self 
end

def self.all
  @@all
end

def cars_serviced
  Car.all.select {|c| c.mechanic == self}
end

def clients
  cars_serviced.map {|c| c.owner}
end

def client_names
  clients.map {|c| c.name}
end

end
