require('rspec')
require('./lib/anagram')

describe('Word#anagram') do
  #0 = true, 1 = false, for palindromes, 0 = left, 1 = right
  it('returns non-anagram inputs as 1') do
    expect('taste'.anagram('apple')).to(eq({:anagram=>1}))
  end
  it('returns 2 one-word anagram inputs as 0') do
    expect('test'.anagram('estt')).to(eq({:anagram=>0}))
  end
  it('returns 2 one-word anagram inputs as 0 regardless of case') do
    expect('TeSt'.anagram('TsEt')).to(eq({:anagram=>0}))
  end
  it('returns multi-word anagram inputs as 0') do
    expect('hello again'.anagram('ehall gioan')).to(eq({:anagram=>0}))
  end
  it('rejects both inputs if either of them have no vowels') do
    expect('srts'.anagram('srts')).to(eq('One of these words needs vowels.'))
  end
  it('returns anagram:0, palindrome: 0 if first word is a palindrome') do
    expect('PotOP'.anagram('toopp')).to(eq({:anagram=>0, :palindrome=>0}))
  end
  it('returns anagram:0, palindrome: 1 if 2nd word is a palindrome') do
    expect('geesegodseedo'.anagram('Do geese see God?')).to(eq({:anagram=>0, :palindrome=>1}))
  end
  it('returns anagram:1, antigram:0 if words are antigrams') do
    expect('hi'.anagram('bye')).to(eq({:anagram=>1, :antigram=>0}))
  end
end
