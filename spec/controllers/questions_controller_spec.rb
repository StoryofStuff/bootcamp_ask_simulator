require 'rails_helper'
require 'questions_controller'

describe QuestionsController, type: :controller do
  it "redirects to the home page after creation" do
    post :create, question: FactoryGirl.attributes_for(:question)
    expect(response).to redirect_to root_url
  end
end