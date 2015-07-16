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
    #selecting the right option when it's also the only option is not impressive.
    3.times { FactoryGirl.create(:stw_prefill) }


    visit new_spread_the_word_path
    select(prefill.title, from: 'spread_the_word[prefill_id]')
    click_on 'Get Started'


    expect_field_with_prefill(prefill.why_it_matters_to_me)
    expect_field_with_prefill(prefill.what_it_is)
    expect_field_with_prefill(prefill.why_it_matters_to_them)
    expect_field_with_prefill(prefill.what_im_asking_them_to_do)


    fill_in :to_user_email, with: 'josh@jcmorrow.com'
    click_on 'Send Email'

    #expect email_to_be_sent

  end

  private

  def expect_field_with_prefill text
    expect(page).to have_css("form textarea", text: text)
  end
end