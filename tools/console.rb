require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("John")
co2 = CarOwner.new("Mike")
co3 = CarOwner.new("Will")
co4 = CarOwner.new("Jim")

m1 = Mechanic.new("Alice", "antique")
m2 = Mechanic.new("Karen", "exotic")
m3 = Mechanic.new("Jess", "clunker")
m4 = Mechanic.new("Davi", "clunker")

car1 = Car.new("Volvo", "who knows", "clunker", co1, m3)
car2 = Car.new("Ford", "who cares", "antique", co2, m1)
car3 = Car.new("Nissan", "wut", "exotic", co3, m2)
car4 = Car.new("Holden", "ummmmm", "exotic", co4, m2)
car5 = Car.new("something else", "...", "clunker", co4, m2)
car6 = Car.new("Holden", "ummmmm", "exotic", co3, m2)

binding.pry
