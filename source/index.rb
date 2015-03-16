require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams/' do
  # p params
  p params[:word]
end

