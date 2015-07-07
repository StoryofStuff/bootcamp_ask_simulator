class Answer < ActiveRecord::Base
  belongs_to :answer_type
  has_many :questions
end
