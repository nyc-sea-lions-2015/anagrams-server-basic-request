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

