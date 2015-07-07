class AskSimulatorsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.by_session request.session_options[:id]
  end
end