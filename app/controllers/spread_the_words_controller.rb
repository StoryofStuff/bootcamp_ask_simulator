class SpreadTheWordsController < ApplicationController
  def new
    @prefills = StwPrefill.all
  end

  def show

  end

  def create
    redirect_to action: :show
  end

end