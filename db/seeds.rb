# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AnswerType.create(short_answer: "yes")
AnswerType.create(short_answer: "no")
AnswerType.create(short_answer: "maybe")
answers = [ 
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
answers.each do |answer|
  Answer.create(answer_type_id: AnswerType.first, content: answer)
end