require 'rails_helper'

feature "User chooses a predefined choice" do
  scenario "successfully" do
    prefill = FactoryGirl.create(:stw_prefill)

    visit new_spread_the_word_path
    expect(page).to have_css('.choices', text: prefill.title)
  end
end