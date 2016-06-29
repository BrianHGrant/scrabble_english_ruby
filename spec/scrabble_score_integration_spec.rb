require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns a scrabble score') do
    visit('/')
    fill_in('word', :with => 'xylophone')
    click_button('Calculate')
    expect(page).to have_content(24)
  end
end
