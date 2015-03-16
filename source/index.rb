require 'sinatra' 

get '/anagrams' do 
  search_word = params[:word]
  anagrams = [] 
  possible_matches = search_word.chars.permutation.map(&:join)
  possible_matches.each do |word|
    anagrams << File.read('words').match(/^#{word}$/).to_s
  end
  anagrams.select{|gram| gram.size > 0 }.uniq.join(',')
end
