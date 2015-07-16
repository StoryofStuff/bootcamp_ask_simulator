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
    redirect_to action: :edit
  end

  def edit
    @spread_the_word = SpreadTheWord.by_session(request.session_options[:id]).first
  end

  def update
    #send_email?
    @spread_the_word = SpreadTheWord.by_session(request.session_options[:id]).first

    if @spread_the_word.update_attributes(spread_the_word_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  private

  def spread_the_word_params
    params.require('spread_the_word').permit('prefill_id', :why_it_matters_to_me, :what_it_is, :why_it_matters_to_them, :what_im_asking_them_to_do).merge(session_id: request.session_options[:id])
  end

end