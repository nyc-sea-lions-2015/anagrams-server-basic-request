require 'sinatra'

get '/' do
  'Anagrams Server'
end

# DONE
# Take the word parameter from the client
# We want to separate each letter from the parameter


# TODO
# We want to find all possible combinations of those letters
# and compare against the wordlist.

# Store all matches in a collection and return the response to the user
# in a comma separated string using cURL

get '/anagrams/:word' do
    # "#{params[:word]}"
    input_word = params[:word].chars
    puts input_word
    # @list = []
    # File.open("todo.txt").each_line do |item|
    #   @list << Task.parse_task(item)
    # end
end
