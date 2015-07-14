require 'rails_helper'

feature "User gets past the splash screen" do
  scenario "successfully" do
    visit new_spread_the_word_path
    click_on "Get Started"
    expect(page).to have_css('.choices', text: 'Watch the Story of Stuff')
  end
end