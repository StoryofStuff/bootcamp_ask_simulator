require 'rails_helper'

feature "User restarts the conversation" do
  scenario "successfully" do
    answer_type = AnswerType.create(short_answer: "yes")
    answer = Answer.create(content: "Yes!", answer_type_id: answer_type.id)
    
    visit root_path
    fill_in :question_text, with: "Will you marry me?"
    click_on 'Send'
    click_on 'Start Over'

    expect(page).to_not have_css('.question')

  end
end