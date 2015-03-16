require 'sinatra'
require_relative 'sortedDictWord'

get '/' do
    'Anagram Server: Enter test word above'
end

get '/:anagram' do
  anagrams = []
  word = params[:anagram]
  word = word.downcase.split('').sort.join
  results = []
  $dict_hash.each do |key, value|
    if value == word
      anagrams << key
    end
  end
  anagrams.each do |anagram|
    results << "#{anagram} is an anagram of #{word} <br/>"
  end
  results.each do |result|
    p result
  end
end
