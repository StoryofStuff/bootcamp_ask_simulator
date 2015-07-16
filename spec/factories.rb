FactoryGirl.define do  
  factory :user do
    
  end
  factory :spread_the_word do
    session_id { Faker::Number.hexadecimal(32) }
    url { Faker::Internet.domain_name }
    why_it_matters_to_me { Faker::Lorem.sentence(10) }
    what_it_is { Faker::Lorem.sentence(10) }
    why_it_matters_to_them { Faker::Lorem.sentence(10) }
    what_im_asking_them_to_do { Faker::Lorem.sentence(10) }
  end


  factory :answer do
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

  factory :stw_prefill do
    title { Faker::Lorem.sentence(4) }
    url { Faker::Internet.domain_name }
    why_it_matters_to_me { Faker::Lorem.sentence(10) }
    what_it_is { Faker::Lorem.sentence(10) }
    why_it_matters_to_them { Faker::Lorem.sentence(10) }
    what_im_asking_them_to_do { Faker::Lorem.sentence(10) }
  end

end