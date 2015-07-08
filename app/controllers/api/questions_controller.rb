class Api::QuestionsController < ApplicationController
  def create
    question = Question.new(question_params)
    if question.save
      respond_with_sms question.phone_number, question.answer.content
    else
      respond_with_sms "Error"
    end
    render nothing: true
  end

  private

  def question_params
    params.require(:question).permit(:text)
  end

  def respond_with_sms number, response_body
    #test credentials!
    account_sid = "AC310be40355ba10d0e0d342f9517683e2"
    auth_token = "3f92c4dbe2550d74401abc7318cd04fa"
    client = Twilio::REST::Client.new account_sid, auth_token
    
    from = "+15005550006" # magic twillio number that always works for sending sms

    client.account.messages.create(
      :from => from,
      :to => "+16078575974", #joshs number please change : )
      :body => response_body
    )
  end
end