require('sinatra')

get('/') do
  erb(:index)
end

get('/output') do
  first_word = params.fetch('first_word')
  second_word = params.fetch('second_word')
  if input.anagram?
    @output = "It's an anagram!"
  else
    @output = "It's not an anagram."
  end  
  erb(:output)
end
