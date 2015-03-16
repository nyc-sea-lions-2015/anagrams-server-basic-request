require 'sinatra'
# require_relative 'words'

get '/' do

  'Anagrams Server'

end


get '/anarams' do
  v = params[:word].split("")
  possible_word = []
  random = v.shuffle!

  1000.times do
    unless possible_word.include?(random.join(""))
      possible_word << random.join("")
    end
    random = v.shuffle!
  end

  puts possible_word
  puts possible_word.length
  correct_words = []
  # puts params
file = File.open("words")
    file.each_line do |line|
      possible_word.each do |word|
        p "line= #{line} word= #{word}"
      if line.chomp == word
        correct_words << word
      end
    end
  end
  puts correct_words.join(",")
end


  # def fact(n)
  #   if n == 0
  #     1
  #   else
  #     n * fact(n-1)
  #   end
  # end
