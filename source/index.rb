require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams/' do
  anagram = params[:word]

  anagram_array = []
  anagrams = []
  File.open('words.txt').each_line do |line|
    anagram_array << line.chomp if line.chomp.chars.sort == anagram.chars.sort
    # anagram.chars.permutation {|arr| anagrams << arr.join}.uniq
    # uniq_anagrams = anagrams.each {|word| word.chomp}.uniq
  end
    anagram_array.length == 1 ? "No anagrams found for #{anagram}" : anagram_array.each_slice(3).to_a.join(", ")
  # p anagram_array

  # anagrams = []
  # anagram.chars.permutation {|arr| anagrams << arr.join}
  # # uniq_anagrams = anagrams.each {|word| word.chomp}.uniq

  # p uniq_anagrams
  # p uniq_anagrams.include?("ant")
  # words_file.each_line do |word|
  #   p word.chomp
  #   # p "included" if uniq_anagrams.include?("ant")
  # end

end

