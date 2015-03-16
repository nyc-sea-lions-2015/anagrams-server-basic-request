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

  possible_word.each do |word|
    puts word
    file = File.open("words")
    file.each_line do |line|
        p "line= #{line} word= #{word}"
      if line.chomp.downcase == word.downcase
        correct_words << word.downcase
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
