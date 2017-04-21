class String

  define_method(:anagram) do |compare|
    (self+compare).split.each() do |word|
      if !word[/[aeiou]/]
        return 'One of these words needs vowels.'
      end
    end
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    word2 = compare.downcase.gsub(/[^a-z0-9]/,'')
    answer = {'anagram': "", 'palindrome': "", 'antigram': ""}

    if (word1.chars.sort<=>word2.chars.sort) == 0
      answer['anagram'] = "It's an anagram"
      if word1.reverse == word1
        answer['palindrome'] == " and the first word is a palindrome"
      elsif word2.reverse == word2
        answer['palindrome'] == " and the second word is a palindrome"
      end#sub branch 1
    else
      answer['anagram'] = "It's not an anagram"
      #antigram logic
    end
    answer
  end

end
