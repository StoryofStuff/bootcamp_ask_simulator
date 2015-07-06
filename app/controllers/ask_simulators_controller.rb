class AskSimulatorsController < ApplicationController
  def index
    @question = Question.new
  end
end