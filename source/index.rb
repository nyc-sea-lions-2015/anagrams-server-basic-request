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
  idx = 0
  until idx == 1000
    if possible_word.include?(random.join(""))
    else
      possible_word << random.join("")
    end
    random = v.shuffle!
    idx += 1
  end
  puts possible_word
  puts possible_word.length
  # puts params
  # puts "ok" if File.read("words").include?(v)

end
