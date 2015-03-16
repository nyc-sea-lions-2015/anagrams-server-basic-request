require 'sinatra'
# require_relative 'words'

get '/' do

  'Anagrams Server'

end


get '/anarams' do
value = params[:word]


  puts params
  puts "ok" if File.read("words").include?(value)

end
