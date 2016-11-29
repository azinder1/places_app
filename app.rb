require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places = Place.all()
  erb(:index)
end

post ('/places') do
  new_place = params.fetch('new_place')
  this_place = Place.new(new_place)
  this_place.add_place()
  erb(:output)
end
