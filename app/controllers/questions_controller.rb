class QuestionsController < ApplicationController
  def create
    question = Question.create(question_params)
    if question.save
      redirect_to root_path
    else
      redirect_to root_path, flash: { warning: "A question is required" }
    end
  end

  private
  
  def question_params
    params.require(:question).permit(:text).merge(session_id: request.session_options[:id])
  end
end