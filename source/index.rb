#index.rb
require 'sinatra'
 "words"

get '/' do
  'Anagrams Server'
end


get '/anagrams' do
  l = params[:word].length
  array_size = factorial(l)
  word_anagrams=anagrams(params[:word])
  dictionary = File.open("words").readlines
  dictionary.map! {|word| word.chomp}
  valid_words = []
  word_anagrams.each do |word|
      valid_words << word if dictionary.include?(word)
  end
  return "#{valid_words.join(',')}" unless valid_words.empty?
  return 500
end

def factorial(num)
    if (num == 0 || num == 1)
      return 1
    end
    return num * factorial(num-1)
end

def anagrams(word)
    a = []
    until a.size == array_size do
      new_word = word.split('').shuffle.join('')
      unless a.include?(new_word)
        a << new_word
      end
    end
    a
  end
