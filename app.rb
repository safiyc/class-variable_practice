require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/item'

get('/') do
  # '@list' is not related to the instance variables within the class Item
  # '@list' is a variable declared here and the '@' makes the content displayable
  @listt = Item.clear
  erb(:list)
end

post('/') do
  name = params["name"]
  item = Item.new(name)
  item.save()
  @listt = Item.all()
  erb(:list)
end
