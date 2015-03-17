require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams/' do
  anagram = params[:word]

  anagram_array = []
  File.open('words.txt').each_line do |line|
    anagram_array << line.chomp if line.chomp.chars.sort == anagram.chars.sort
  end
    anagram_array.length == 1 ? "No anagrams found for #{anagram}" : anagram_array.each_slice(3).to_a.join(", ")
end

