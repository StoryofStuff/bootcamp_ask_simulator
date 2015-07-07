class Question < ActiveRecord::Base
  default_scope { order('created_at asc') }
  scope :by_session, ->(session_id) { where session_id: session_id }

  validates :text, presence: true

  belongs_to :answer

  after_validation :assign_answer, on: [:create]

  private

  def assign_answer
    self.answer = Answer.order("RANDOM()").first

    #maybe in the future this is where we deliver the answer via text?
    #TextAnswer.new().queue_delivery
  end
end
