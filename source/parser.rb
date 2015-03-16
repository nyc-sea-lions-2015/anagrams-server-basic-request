dictionary_hash = {}
File.open('dictWords.txt', 'r').each do |word|
  word = word.downcase.chomp
  dictionary_hash[word] = word.split('').sort.join
end

File.open('sortedDictWord.rb', 'w') { |line| line.write(dictionary_hash)}





# .each do |line|
#   line.puts dictionary_hash
# end

