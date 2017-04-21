require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  #retrive form inputs
  first_word = params.fetch('first_word')
  second_word = params.fetch('second_word')

  #checks array values from method logic output, uses them as index values to pick the correct phrases, concatenates them onto @output
  phrases = [
    'These words are anagrams.',
    'These words are not anagrams.',
    ' The first word is also a palindrome!',
    ' The second word is also a palindrome!',
    ' However, they are antagrams!',
    'Both words must contain vowels. Try again.'
  ]
  output_arr = first_word.anagram(second_word)
  @output = ""
  output_arr.each() do |index|
    @output += phrases[index]
  end
  erb(:output)
end
