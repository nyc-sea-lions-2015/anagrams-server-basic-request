# Anagrams Server w/ Basic Requests


## Summary
This challenge will take the concepts of the anagrams basic challenge from phase one, and migrate it into a web application. 

It is going to introduce the basic web request and response cycle. It will be your first exposure to Sinatra, a Domain Specific Language that we will use to teach you about web application development. 

After this challenge you should have a clear understanding of:

- How a client request is processed by the server.
- How a server builds a response.
- What the response looks like after returned to the client.




### New Technology/Concept

- Sinatra 
  - We will be adding the [Sinatra](http://www.sinatrarb.com/intro.html) Gem to our project. Sinatra is a DSL that will help us build our basic web applications throughout phase 2

- cURL
  -  [curl](http://linux.about.com/od/commands/l/blcmdl1_curl.htm) is a CLI client to get documents/files from a server. 


## Releases

### Release 0: Your First Web Server

In the source directory of the challenge create a file named Gemfile

	$ cd <path>/anagrams-server-basic-requests/source
	$ touch Gemfile

In the Gemfile set the source to https://rubygems.org and add the sinatra gem

	#Gemfile
	
	source 'https://rubygems.org'
	gem 'sinatra'
	
Run Bundle install

	$ bundle install 

In the same directory create another file called index.rb

	$ touch index.rb
	
In the index.rb file require sinatra and create a get route to the root directory. Inside the route return a response with the plain text 'Anagrams Server' 

	#index.rb
	require 'sinatra'
	
	get '/' do
		'Anagrams Server'
	end
	
Next up use ruby to execute the index.rb file and watch what happens.

	$ ruby index.rb
	[2015-03-15 21:35:12] INFO  WEBrick 1.3.1
	[2015-03-15 21:35:12] INFO  ruby 2.1.1 (2014-02-24) [x86_64-darwin12.0]
	== Sinatra/1.4.5 has taken the stage on 4567 for development with backup from WEBrick
	[2015-03-15 21:35:12] INFO  WEBrick::HTTPServer#start: pid=6685 port=4567

Congratulations! You've just created your first web server. Now let's try it out. 

Using the curl command in the terminal make a client request to the root directory of your local host using port 4567.

	$ curl localhost:4567
	$ Anagrams Server
	

### Release 1: Import a Dictionary

OS X comes with its own big-ass&trade; dictionary.  Try running this from the
command line:

	$ cat /usr/share/dict/words # outputs the contents of the file to STDOUT
	$ wc -w /usr/share/dict/words # counts the number of words in the file
	$ cat /usr/share/dict/words | grep violin # find any lines that include the string violin
	$ grep violin < /usr/share/dict/words # same as above, but without using `cat`

What does the `-w` option for `wc` command do? How does `wc -w` differ from
`wc -l`? If you're curious what else `wc` can do, try reading the __man__ual
page for `wc` by running `man wc`. Tip: You can quit the `man` program with
`q`.

Copy `/usr/share/dict/words` into your application directory. 

We're copying the file into our application directory because in the world
where we deploy the application to a server or someone else installs the
application on their computer we want each instance to have the same
dictionary, not whatever dictionary happens to be on the machine.


### Release 2: Create Route to find Anagrams
Now create a new get route '/anarams' that will take a parameter called 'word', create a list of possible anagrams, and search the word file in your application directory for all matching words.

Store each of the matched anagrams in a collection and return them in the response from the server to the client in a comma separated string.

Now use the curl command to test your application

	$ curl localhost:4567?word=hello
	$hello,helol,hello,helol,hlole,hlole,holel,holle,holel,holle,eholl,eholl,ellho,ellho,lhole,lehol,lleho,lohel,lhole,lehol,lleho,lohel,ohell,ohell,ollhe,ollh
	
### Release 3: Try it out in a browser
Let
 

## Conclusion
Provide the students with some closure for the challenge.  Reinforce why students completed this challenge and provide a check on whether they have achieved the desired learning from the challenge.
