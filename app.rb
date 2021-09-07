require 'sinatra'
require "sinatra/reloader" if development?

Sinatra::Reloader

get '/' do
  "Hello world"
end

get '/secret' do
  "Secret things..."
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do 
  erb :index_2
end 