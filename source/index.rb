#index.rb
require 'sinatra'

get '/' do
    'Kiran & Steph are AWESOME!'
end

get '/anagrams/' do

  word = params[:word]
  word = word.chars.sort!
  final = []
  File.open('words').each_line do |line|
    dic_word = line.chomp.chars.sort
    p dic_word
    final << line.chomp if dic_word == word
  end

  # final.each do |word|
  #   puts "#{word} "
  # end
  p final


end
