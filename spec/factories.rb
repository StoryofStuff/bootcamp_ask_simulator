FactoryGirl.define do

  factory :question do
    text { Faker::Lorem.sentence(3) << '?' }
    session_id { Faker::Number.hexadecimal(32) }
  end

end