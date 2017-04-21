class String

  define_method(:anagram) do |compare|
    #checks for any words with no vowels
    answer = []
    vowel = true;
    (self+" "+compare).split(" ").each() do |word|
      if !word[/[aeiouAEIOU]/]
        vowel = false
      end
    end
    if vowel == false
      answer.push(5)
      return answer
    end

    #filters non alphanumeric characters
    word1 = self.downcase.gsub(/[^a-z0-9]/,'')
    word2 = compare.downcase.gsub(/[^a-z0-9]/,'')

    #anagram logic
    if (word1.chars.sort<=>word2.chars.sort) == 0
      answer.push(0)
      #palindrome logic
      if word1.reverse == word1
        answer.push(2)
      elsif word2.reverse == word2
        answer.push(3)
      end

    else
      answer.push(1)
      #antigram logic
      antigram = true
      word1.split("").each() do |char|
        if word2.include?(char)==true
          antigram = false
        end
      end
      if antigram == true
        answer.push(4)
      end
    end
    answer
  end

end
