require 'sinatra'

get '/' do
  'Anagrams Server'
end

# DONE
# Take the word parameter from the client
# We want to separate each letter from the parameter
# We want to find all possible combinations of those letters
# and compare against the wordlist.

# TODO

# Store all matches in a collection and return the response to the user
# in a comma separated string using cURL

get '/anagrams' do
    # "#{params[:word]}"
    input_word = params[:word].chars
    word_combos = input_word.permutation(input_word.length)
    unique_words = []
    word_combos.each { |word| unique_words << word.join('') }
    unique_words = unique_words.uniq

    dictionary = []
    File.open("words").each_line do |word|
      dictionary << word.chomp
    end

    collection = []
    unique_words.each do |word|
      collection << word if dictionary.include?(word)
    end

    collection.join(',')

end
