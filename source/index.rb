require 'sinatra'

get '/' do
    'Anagrams Server'
end

get '/anagrams/:word' do
    word = params[:word]
    anagrams = word.split('').permutation.to_a.map{ |word| word.join }
    p anagrams.join(', ')
end

