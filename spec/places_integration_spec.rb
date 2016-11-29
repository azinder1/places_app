require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('processes user place and returns it as list item') do
    visit('/')
    fill_in('new_place', :with => 'Ithaca, NY')
    click_button('Add!')
    visit('/')
    expect(page).to have_content('Ithaca, NY')
  end
end
