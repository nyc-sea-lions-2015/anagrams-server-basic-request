require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams' do
  possible_words = possible_anagrams(params[:word])#.delete_if do |anagram|
    # puts "#{matches?(anagram.join(''))}: #{anagram.join('')}"
    # matches?(anagram.join("")) == false
  # end.map {|result| result.join("")}.join(", ")
  matched_words = matches(possible_words)

  if matched_words.length == 0
    return 500
  else
    return matched_words
  end

end

error 500..510 do
  "No Anagrams Found for #{params[:word]}"
end

def possible_anagrams(word)
  word.chars.permutation.to_a.uniq.map{|anagram| anagram.join("")}
end

def matches(possible_words)
  dictionary_array = []
  File.readlines('./words').each do |word|
    dictionary_array << word.chomp
  end
  possible_words & dictionary_array
end
# def matches?(word_to_find)
#   File.readlines('./words').each do |word|
#     # puts "Word: #{word.strip}, Word_to_find:#{word_to_find}"
#     return true if word.chomp == word_to_find
#   end
#   false
# end
