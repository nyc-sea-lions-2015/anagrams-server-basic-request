#index.rb
require 'sinatra'

get '/' do
  'Anagrams Server'
end

get '/anagrams' do
  l = params[:word].length
  def factorial(num)
    if (num == 0 || num == 1)
      return 1
    end
    return num * factorial(num-1)
  end

  array_size = factorial(l)
  def anagrams(word)
    anagrams = []
    until anagrams.size == array_size do
      new_word = word.split('').shuffle.join('')
      unless anagrams.include?(new_word)
        anagrams << new_word
      end
    end
  end
end
