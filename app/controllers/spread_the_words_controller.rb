class SpreadTheWordsController < ApplicationController
  def new
    @spread_the_word = SpreadTheWord.new
    @prefills = StwPrefill.all
  end

  def show
    @spread_the_word = SpreadTheWord.by_session(request.session_options[:id]).first
  end

  def create
    @spread_the_word = SpreadTheWord.create(spread_the_word_params)
    redirect_to action: :show
  end

  private

  def spread_the_word_params
    params.require('spread_the_word').permit('prefill_id').merge(session_id: request.session_options[:id])
  end

end