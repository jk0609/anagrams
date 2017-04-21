require('rspec')
require('./lib/anagram')

describe('Word#anagram') do
  it('returns non-anagram inputs as anagram: false') do
    expect('test'.anagram('apple')).to(eq(false))
  end
  it('returns 2 one-word anagram inputs as true') do
    expect('test'.anagram('estt')).to(eq(true))
  end
  it('returns 2 one-word anagram inputs as true regardless of case') do
    expect('TeSt'.anagram('TsEt')).to(eq(true))
  end
  it('returns multi-word anagram inputs as true') do
    expect('hello again'.anagram('ehall gioan')).to(eq(true))
  end
  it('rejects both inputs if either of them have no vowels') do
    expect('srts'.anagram('srts')).to(eq('One of these words needs vowels.'))
  end
  it('returns true if a word is a palindrome, case insensitive') do
    expect('PotOP'.anagram).to(eq(true))
  end
  it('returns true for multi-word palindromes, case/punct insensitive') do
    expect('Do geese see God?'.anagram).to(eq(true))
  end
end
