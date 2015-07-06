require 'rails_helper'

feature "User asks a question" do
  scenario "successfully" do
    visit root_path
    fill_in :question_text, with: "Will you marry me?"
    click_on 'Ask'
    expect(page).to have_css('.question', text: "Will you marry me?")
  end
end