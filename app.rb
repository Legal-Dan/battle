require 'sinatra'
require "sinatra/reloader" if development?
Sinatra::Reloader

get '/' do
  "Hello world"
end

get '/secret' do
  "Secret things..."
end

get '/cat' do

  "<div style='border: 3px dashed red'>
  <img src='https://i.imgur.com/jFaSxym.png'/>
  </div>"
end
