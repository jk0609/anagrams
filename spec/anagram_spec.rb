require('rspec')
require('./lib/anagram')

describe('Word#anagram') do
  it('returns non-anagram inputs as 1') do
    expect('taste'.anagram('apple')).to(eq([1]))
  end
  it('returns 2 one-word anagram inputs as 0') do
    expect('test'.anagram('estt')).to(eq([0]))
  end
  it('returns 2 one-word anagram inputs as 0 regardless of case') do
    expect('TeSt'.anagram('TsEt')).to(eq([0]))
  end
  it('returns multi-word anagram inputs as 0') do
    expect('hello again'.anagram('ehall gioan')).to(eq([0]))
  end
  it('rejects both inputs if either of them have no vowels(5)') do
    expect('srts'.anagram('sots prts')).to(eq([5]))
  end
  it('returns anagram:0, palindrome: 2 if first word is a palindrome') do
    expect('PotOP'.anagram('toopp')).to(eq([0,2]))
  end
  it('returns anagram:0, palindrome: 3 if 2nd word is a palindrome') do
    expect('geesegodseedo'.anagram('Do geese see God?')).to(eq([0,3]))
  end
  it('returns anagram:1, antigram:4 if words are antigrams') do
    expect('hi'.anagram('bye')).to(eq([1,4]))
  end
  it('returns anagram:1, antigram:4 if multiple words are antigrams') do
    expect('hi tim ros'.anagram('bye pack')).to(eq([1,4]))
  end
end
