#index.rb
require 'sinatra'

get '/' do
  'Kiran & Steph are AWESOME!'
end

get '/anagrams/' do
  print_word = params[:word]
  word = print_word.chars.sort!
  final = []
  File.open('words').each_line do |line|
    dic_word = line.chomp.chars.sort
    final << line if dic_word == word
  end
  if final.empty?
    return "No Anagrams Found for #{print_word}"
  else
    final.each do |word|
      puts word
    end
  end
end
