class AskSimulatorsController < ApplicationController
  def show
    @question = Question.new
    @questions = Question.by_session request.session_options[:id]
  end

  def destroy
    reset_session
    redirect_to action: 'show'
  end
end