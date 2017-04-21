class String

  define_method(:anagram) do |compare|
    (self+compare).split.each() do |word|
      if !word[/[aeiou]/]
        return 'One of these words needs vowels.'
      end
    end
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    word2 = compare.downcase.gsub(/[^a-z0-9]/,'')
    answer = {}

    if (word1.chars.sort<=>word2.chars.sort) == 0
      answer[:anagram] = 0
      if word1.reverse == word1
        answer[:palindrome] = 0
      elsif word2.reverse == word2
        answer[:palindrome] = 1
      end#sub branch 1
    else
      answer[:anagram] = 1
      antigram = true
      word1.split("").each() do |char|
        if word2.include?(char)==true
          antigram = false
        end
      end
      if antigram == true
        answer[:antigram] = 0
      end
    end
    answer
  end

end
