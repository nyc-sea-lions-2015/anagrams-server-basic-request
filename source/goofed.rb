require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams/' do
  anagram = params[:word]

  words_file = File.open('words.txt', 'r')
  anagram_array = []
  words_file.each_line do |line|

    if line.chomp.chars.sort.join == anagram.chars.sort.join
      anagram_array << line.chomp
      anagrams = []
      anagram.chars.permutation(5) {|arr| anagrams << arr.join}
      return "These are the anagrams of the words: #{anagrams.each {|word| p word.chomp}.join(", ")}"
    else
      return "No anagrams found for #{anagram}"
    end
    anagram_array
  end


end

