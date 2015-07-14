require 'rails_helper'

feature "User chooses a predefined choice" do
  scenario "successfully" do
    prefill = FactoryGirl.create(:stw_prefill)

    visit new_spread_the_word_path
    expect(page).to have_css('.choices', text: prefill.title)
  end
end


feature "User completes Spread The Word using defaults" do
  scenario "successfully" do
    prefill = FactoryGirl.create(:stw_prefill)
    3.times { FactoryGirl.create(:stw_prefill) }


    visit new_spread_the_word_path
    select(prefill.title, from: 'spread_the_word[prefill_id]')
    click_on 'Get Started'
    expect(page).to have_content(prefill.why_it_matters_to_me)
  end
end