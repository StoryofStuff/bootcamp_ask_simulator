class QuestionsController < ApplicationController
  def create
    question = Question.create(question_params)
    if question.save
      redirect_to root_path
    else
      redirect_to root_path, flash: "Error"
    end
  end

  private
  
  def question_params
    params.require(:question).permit(:text)
  end
end