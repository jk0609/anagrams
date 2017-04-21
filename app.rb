require('sinatra')

get('/') do
  erb(:index)
end

get('/output') do
  first_word = params.fetch('first_word')
  second_word = params.fetch('second_word')

  phrases = {
    :anagram=> ['Yes', 'No'],
    :palindromeLeft=> ['Yes1'],
    :palindromeRight=> ['Yes2'],
    :antigram=> ['Yes', 'No'],
  }
  erb(:output)
end
