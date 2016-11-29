require('pry')
require('rspec')

class Place
  @@place_array = []
  def initialize(place_name)
    @place_name = place_name
  end
  def add_place()
    @@place_array.unshift(self)
  end
  def self.all
    @@place_array
  end
  def self.clear
    @@place_array = []
  end
  def place_name
    @place_name
  end
end
