require('sinatra')

get('/') do
  erb(:index)
end

get('/output') do
  first_word = params.fetch('first_word')
  second_word = params.fetch('second_word')
  phrases = ['AnaYes','AnaNo','PalLeft','PalRight','AntYes','Vowel']
  output_arr = first_word.anagram(second_word)
  @output = ""
  output_arr.each() do |index|
    @output += phrases[index]
  end
  erb(:output)
end
