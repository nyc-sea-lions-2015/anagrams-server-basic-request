require 'sinatra'
# require_relative 'words'

get '/' do

  'Anagrams Server'

end


get '/anarams' do
  v = params[:word]
  v=v.split("")

  def fact(n)
    if n == 0
      1
    else
      n * fact(n-1)
    end
  end
  puts fact(v.length)

  possible_word = []
  puts random = v.shuffle!
  until (possible_word.length) == fact(v.length)
    puts "instide until #{possible_word.length}"
    puts possible_word
    if possible_word.include?(random.join(""))
      puts "inside if"
    else
      puts "inside else"
      possible_word << random.join("")
    end
    random = v.shuffle!

    puts "random = #{random}"
  end
  puts possible_word
  # puts params
  # puts "ok" if File.read("words").include?(v)

end
