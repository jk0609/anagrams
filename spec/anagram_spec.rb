require('rspec')
require('./lib/anagram')

describe('String#anagram?') do
  it('returns non-anagram inputs as incorrect') do
    expect('test'.anagram?('apple')).to(eq(false))
  end
  it('returns 2 one-word anagram inputs as true') do
    expect('test'.anagram?('estt')).to(eq(true))
  end
  it('returns 2 one-word anagram inputs as true regardless of case') do
    expect('TeSt'.anagram?('TsEt')).to(eq(true))
  end
  it('returns multi-word anagram inputs as true') do
    expect('hello again'.anagram?('ehall gioan')).to(eq(true))
  end
  it('rejects both inputs if either of them have no vowels') do
    expect('srts'.anagram?('srts')).to(eq('Not a word'))
  end
end
