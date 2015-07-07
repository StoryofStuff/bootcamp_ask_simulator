class Answer < ActiveRecord::Base
  belongs_to :answer_type
  has_many :questions

  def short_answer
    self.answer_type.short_answer
  end
end
