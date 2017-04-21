class String
#   define_method(:initialize) do |word1, word2|
#     @word1 = word1.downcase.gsub(/[^a-z0-9]/,'')
#     @word2 = word2.downcase.gsub(/[^a-z0-9]/,'')
#   end

  define_method(:anagram?) do |compare|
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    word2 = compare.downcase.gsub(/[^a-z0-9]/,'')

    if word1[/[aeiou]/]||word2[/aeiou/]
      if (word1.chars.sort<=>word2.chars.sort) == 0
        true
      else
        false
      end #sub branch
    else
      'One of these words needs vowels.'
    end #main branch
  end

  define_method(:palindrome?) do
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    if word1.reverse == word1
      true
    else
      false
  end

  define_method(:palindrome?) do
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    if word1.reverse == word1
      true
    else
      false
  end
end
