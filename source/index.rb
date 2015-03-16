require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams/' do
  anagram = params[:word]

  words_file = File.open('words.txt', 'r')
  anagram_array = []
  words_file.each_line do |line|

    anagram_array << line.chomp if line.chomp.chars.sort.join == anagram.chars.sort.join
    anagram_array
  end
  p anagram_array

  anagrams = []
  anagram.chars.permutation(5) {|arr| anagrams << arr.join}
  p anagrams.each {|word| p word.chomp}.join(", ")
end

