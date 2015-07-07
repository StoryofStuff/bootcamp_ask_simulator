# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

yes_type = AnswerType.create(short_answer: "yes")
no_type = AnswerType.create(short_answer: "no")
maybe_type = AnswerType.create(short_answer: "maybe")
yes_answers = [ 
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
yes_answers.each do |answer|
  Answer.create(answer_type_id: yes_type.id, content: answer)
end
no_answers = [ 
                "Not right now.",
                "Maybe another time.",
                "Sorry, dude.",
                "No can do.",
                "It’s not looking promising for me.",
                "Wish I could help, but it’s just not realistic for me right now."
              ]
no_answers.each do |answer|
  Answer.create(answer_type_id: no_type.id, content: answer)
end
maybe_answers = [ 
                  "I’m in the middle of something right now. Can you ask me again later?",
                  "Probably. Let me look at my calendar and get back to you. ",
                  "Can you tell me a little more?",
                  "What’d be involved?",
                  "Hmmm. Maybe. Can I let you know later?",
                  "I’m on the fence. "
                ]
maybe_answers.each do |answer|
  Answer.create(answer_type_id: maybe_type.id, content: answer)
end



