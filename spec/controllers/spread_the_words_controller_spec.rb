require 'rails_helper'
require 'spread_the_words_controller'

describe SpreadTheWordsController, type: :controller do
  describe '.new' do
    it 'creates a new STW' do
      expect(SpreadTheWord).to receive(:new)

      get :new
    end
    it 'renders the new view' do
      get :new

      expect(response).to render_template(:new)
    end
  end
  describe '.create' do
    it "renders the show page after creation" do
      prefill = FactoryGirl.create(:stw_prefill)

      post :create, {spread_the_word: {prefill_id: prefill.id}}

      expect(response).to redirect_to(:edit_spread_the_word)
    end
    it 'calls create on SpreadTheWord' do
      prefill = FactoryGirl.create(:stw_prefill)

      expect(SpreadTheWord).to receive(:create).with(prefill_id: prefill.id.to_s, session_id: request.session_options[:id])

      post :create, {spread_the_word: {prefill_id: prefill.id}}
    end
  end
  describe '.edit' do
    it 'renders the edit template' do
      get :edit

      expect(response).to render_template(:edit)
    end
  end
  describe '.show' do
    it 'renders the show template' do
      get :show

      expect(response).to render_template(:show)
    end
  end
  describe '.update' do
    it 'calls update_attributes on SpreadTheWord instance' do
      prefill = FactoryGirl.create(:stw_prefill)
      spread_the_word = FactoryGirl.create(:spread_the_word, prefill_id: prefill.id, session_id: request.session_options[:id])

      allow(SpreadTheWord).to receive(:where).and_return([spread_the_word])

      expect(spread_the_word).to receive(:update_attributes).with(prefill_id: prefill.id.to_s, session_id: request.session_options[:id])

      post :update, {spread_the_word: {prefill_id: prefill.id}}
    end
    it 'redirects to show' do
      prefill = FactoryGirl.create(:stw_prefill)
      spread_the_word = FactoryGirl.create(:spread_the_word, prefill_id: prefill.id, session_id: request.session_options[:id])

      post :update, {spread_the_word: {prefill_id: prefill.id}}

      expect(response).to redirect_to(:spread_the_word)
    end
  end

end