require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('test', {type => :feature}) do
#   it('Visits the index page, inputs "TEST" and returns "OUTPUT"')
#   visit('/')
# end
