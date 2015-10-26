require 'sinatra'

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/this' do
  "Hello World"
end

get '/sinatra' do
  "Hello Sinatra"
end

get '/jacqui' do
  "Hello Jacqui"
end
