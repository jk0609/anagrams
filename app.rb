require('sinatra')

get('/') do
  erb(:index)
end

get('/output') do
  first_word = params.fetch('first_word')
  second_word = params.fetch('second_word')

  # if word1.anagram(word2)
  #   if palindrome(word1)
  #     @output = 'They are anagrams and word2 is a palindrome!'
  #   elsif palindrome(word2)
  #     @output = 'They are anagrams and word2 is a palindrome!'
  #   else
  #     @output = 'They are anagrams!'
  #   end
  # else
  #   if word1.antigram(word2)
  #     @output = 'They are antigrams!'
  #   else
  #     @output = 'These words have no particular relationship'
  #   end
  # end
  erb(:output)
end
