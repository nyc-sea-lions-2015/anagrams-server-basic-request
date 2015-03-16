require 'sinatra'

get '/' do
    'Anagrams Server'
end

get '/anagrams/:word' do
  word = params[:word]
  dict = []
  file = File.open('words', 'r')
  file.each_line do |word|
    dict << word.chomp
  end
  anagrams = word.split('').permutation.to_a.map{ |word| word.join }
  words = []
  anagrams.each do |word|
    words << word if dict.include?(word.chomp)
  end
  words.delete(word)
  words.uniq
  if words.count == 0
    return [404, "No anagrams found for #{word}"]
  end
  p words.join(', ')
end


