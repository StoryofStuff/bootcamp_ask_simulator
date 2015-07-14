class SpreadTheWordsController < ApplicationController
  def new
    @spread_the_word = SpreadTheWord.new
    @prefills = StwPrefill.all
  end

  def show

  end

  def create
    redirect_to action: :show
  end

end