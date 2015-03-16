require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams' do
  matched_words = possible_anagrams(params[:word]).delete_if do |anagram|
    # puts "#{matches?(anagram.join(''))}: #{anagram.join('')}"
    matches?(anagram.join("")) == false
  end.map {|result| result.join("")}.join(", ")

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
  word.chars.permutation.to_a.uniq
end

def matches?(word_to_find)
  File.readlines('./words').each do |word|
    # puts "Word: #{word.strip}, Word_to_find:#{word_to_find}"
    return true if word.chomp == word_to_find
  end
  false
end
