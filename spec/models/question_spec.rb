require 'rails_helper'

RSpec.describe Question, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:question)).to be_valid
  end
  it "is invalid without some text" do
    expect(FactoryGirl.build(:question, text: '')).to be_invalid
  end
  it "assigns an answer after being saved" do
    answer = FactoryGirl.create(:answer)
    expect(FactoryGirl.create(:question).answer).to eq(answer)
  end
end
