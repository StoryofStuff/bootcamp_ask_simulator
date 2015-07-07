class Question < ActiveRecord::Base
  default_scope { order('created_at asc') }
  scope :by_session, ->(session_id) { where session_id: session_id }

  validates :text, presence: true

  belongs_to :answer

  after_validation :assign_answer, on: [:create]

  private

  def assign_answer
=begin    answers = [ 
                "Totally. That sounds great.",
                "You betcha.",
                "!!!!!",
                "Affirmative.",
                "Of course.",
                "All signs point to yes.",
                "You can count on me.",
                "Yep. Happy to help.",
                ": )"
              ]
=end
    self.answer = Answer.first

    #maybe in the future this is where we deliver the answer via text?
  end

end
