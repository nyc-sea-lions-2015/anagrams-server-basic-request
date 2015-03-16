require 'sinatra'


get '/' do
  'Anagrams Server'
end

get '/anagrams' do
  "Your word is #{params[:word]}"

  value = params[:word]

  word_array = value.chars

  dictionary = []
  File.open("words").each do |line|
     dictionary  << line.chomp
  end

  word_container = []
  word_array.permutation(word_array.length).to_a.each do |word|
    anagram = word.join("")
    if dictionary.include?(anagram)
    word_container  << anagram
    end
  end
  word_container.uniq.join(",")
end

error 500 do
  'There are no anagrams for this word.'
end




