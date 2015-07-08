require 'rails_helper'
require 'api/questions_controller'

describe Api::QuestionsController, type: :controller do
  it "responds with a Twillio text back" do
      answer = FactoryGirl.create(:answer) 
      #mock twilio
      twilio = spy('TwilioClient')
      allow(Twilio::REST::Client).to receive(:new) { twilio }

      post :create, question: FactoryGirl.attributes_for(:question, phone_number: "+1234567890")

      puts "ANSWER: #{answer.content}"


      expect(twilio).to have_received(:account)
      expect(twilio).to have_received(:messages)
      expect(twilio).to have_received(:create).with(from: "+15005550006",
                                                    to: "+1234567890",
                                                    body: answer.content)
  end
end