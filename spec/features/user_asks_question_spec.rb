require 'rails_helper'

feature "User asks a question" do
  scenario "successfully" do
    visit root_path
    fill_in :question_text, with: "Will you marry me?"
    click_on 'Send'
    expect(page).to have_css('.question', text: "Will you marry me?")
    expect(page).to have_css('.answer')
  end
  scenario "unsuccessfully" do
    visit root_path
    click_on 'Send'
    expect(page).to have_css('.warning', text: "A question is required")
  end
end