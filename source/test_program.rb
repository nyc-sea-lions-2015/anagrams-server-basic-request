require_relative 'sortedDictWord'
word = "pool"
word = word.downcase.split('').sort.join
anagrams = []

  $dict_hash.each do |key, value|
    if value == word
      anagrams << key
    end
  end

  anagrams.each do |anagram|
    puts anagram
  end


# for every value in dict_hash.has_value?(word), shovel the key into anagrams arrayment
# these are the anagrams for your word:



# require 'sinatra'
# require_relative 'sortedDictWord'

# get '/:anagram' do
#   'Anagrams Server'

#   File.open('dictWords.txt', 'r').each do |guest_word|
#     params[:anagram].split('').sort.join
#     guest_word.split('').sort.join
#     if params[:anagram] == guest_word
#       anagrams << guest_word
#     end
#     anagrams.each do |anagram|
#       p anagram
#     end
#   end
# end

# anagrams = []
