require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('./lib/anagram', {:type => :feature}) do
  it('Visits the index page, inputs "apple" and "papel" and sees confirmation of anagram on /output') do
    visit('/')
    fill_in('first_word', :with=>'apple')
    fill_in('second_word', :with=>'papel')
    click_button('Submit')
    expect(page).to have_content('These phrases are anagrams.')
  end
  it('Visits the index page, inputs "pottop" and "ppoott" and sees confirmation of anagram and first word palindrome on /output') do
    visit('/')
    fill_in('first_word', :with=>'toppot')
    fill_in('second_word', :with=>'ppoott')
    click_button('Submit')
    expect(page).to have_content('These phrases are anagrams. The first phrase is also a palindrome!')
  end
  it('Visits the index page, inputs "bye" and "hi ros" and sees negative confirmation on anagram but confirmation of antagram on /output') do
    visit('/')
    fill_in('first_word', :with=>'bye')
    fill_in('second_word', :with=>'hi ros')
    click_button('Submit')
    expect(page).to have_content('These phrases are not anagrams. However, they are antagrams!')
  end
end
