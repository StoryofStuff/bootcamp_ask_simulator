require 'rails_helper'

feature "User asks a question" do
  scenario "successfully" do
    answer_type = AnswerType.create(short_answer: "yes")
    answer = Answer.create(content: "Yes!", answer_type_id: answer_type.id)
    
    visit ask_simulator_path
    fill_in :question_text, with: "Will you marry me?"
    click_on 'Send'


    expect(page).to have_css('.question', text: "Will you marry me?")
    expect(page).to have_css('.answer', text: "Yes!")
  end
  scenario "unsuccessfully" do
    visit ask_simulator_path
    click_on 'Send'
    expect(page).to have_css('.warning', text: "A question is required")
  end
end