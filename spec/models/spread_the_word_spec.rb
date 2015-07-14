require 'rails_helper'

RSpec.describe SpreadTheWord, :type => :model do
  it 'prefills values upon save' do
    prefill = FactoryGirl.create(:stw_prefill)
    spread_the_word = SpreadTheWord.new(prefill_id: prefill.id)

    spread_the_word.save

    expect(spread_the_word.why_it_matters_to_me).to eq(prefill.why_it_matters_to_me)

  end
end
