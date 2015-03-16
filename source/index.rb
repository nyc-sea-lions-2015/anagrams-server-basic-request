require 'sinatra'

get '/' do
    'Anagrams Server'
end

get '/anagrams/:word' do
  word = params[:word]
  anagrams = word.split('').permutation.to_a.map{ |word| word.join }
  file = File.open('words', 'r')
  dict = []
  file.each_line do |word|
    dict << word.chomp
  end
  anagrams.each do |word|
    p word if dict.include?(word.chomp)
  end
end


