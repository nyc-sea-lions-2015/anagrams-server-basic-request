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
  # word_container << anagram
  # end
    if dictionary.include?(anagram)
    word_container  << anagram
    end

  end
  word_container.uniq.join(",")
end



# def run (input)
#   input * 2
# end

# @word is going to be a string
# word_array = @word.chars
# word_array.permutation(word_array.length).to_a
#join each word in word_arr

