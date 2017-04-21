class String
  define_method(:anagram?) do |compare|

    word1 = self.downcase.gsub(' ','')
    word2 = compare.downcase.gsub(' ','')

    if word1[/[aeiou]/]||word2[/aeiou/]
      if (word1.chars.sort<=>word2.chars.sort) == 0
        true
      else
        false
      end #sub branch
    else
      'Not a word'
    end #main branch
  end
end
