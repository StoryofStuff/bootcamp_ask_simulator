class Question < ActiveRecord::Base
  default_scope { order('created_at asc') }

  validates :text, presence: true

  after_validation :assign_answer, on: [:create]

  private

  def assign_answer
    answers = ["Totally. That sounds great.",
                "You betcha.",
                "!!!!!",
                "Affirmative.",
                "Of course.",
                "All signs point to yes.",
                "You can count on me.",
                "Yep. Happy to help.",
                "emoji"
              ]

    self.answer = answers[rand(answers.size)]

    #maybe in the future this is where we deliver the answer via text?
  end

end
