FactoryGirl.define do

  factory :question do
    text { Faker::Lorem.sentence(3) << '?' }
  end

end