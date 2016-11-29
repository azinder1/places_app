require('pry')
require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end
  describe('#add_place') do
    it('lets you add a place') do
      test_place = Place.new("Ithaca, NY")
      test_place.add_place()
      expect(Place.all()[0]).to(eq("Ithaca, NY"))
    end
    it('lets you add a place') do
      test_place = Place.new("Ithaca, NY")
      other_place = Place.new("Portland, OR")
      test_place.add_place()
      other_place.add_place()
      expect(Place.all()[0]).to(eq("Portland, OR"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end
end
