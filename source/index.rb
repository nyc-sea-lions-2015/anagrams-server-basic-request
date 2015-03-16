require 'sinatra'
require_relative 'sortedDictWord'

get '/:anagram' do
  'Anagrams Server'

  File.open('dictWords.txt', 'r').each do |guest_word|
    params[:anagram].split('').sort.join
    guest_word.split('').sort.join
    if params[:anagram] == guest_word
      anagrams << guest_word
    end
    anagrams.each do |anagram|
      p anagram
    end
  end
end

anagrams = []


