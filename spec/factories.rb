FactoryGirl.define do  factory :answer do
    content "MyString"
    answer_type_id 1
  end
  factory :answer_type do
    short_answer "Yes"
  end


  factory :question do
    text { Faker::Lorem.sentence(3) << '?' }
    session_id { Faker::Number.hexadecimal(32) }
  end

end