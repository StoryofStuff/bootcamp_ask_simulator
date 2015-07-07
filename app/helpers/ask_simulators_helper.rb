module AskSimulatorsHelper
  def get_instructions(last_question)
    if last_question.nil?
      "<p>Let’s face it: asking for help can be really hard. Whether you’re worried about coming across as needy or nervous that people will feel put out, there’s no shortage of cultural and personal challenges to asking others to help you out.  That being said, there is no getting around the fact that you don’t get what you don’t ask for.</p>
       <p>As we each work to strengthen our Citizen Muscles “asking” is a critical skill you’ve got to practice.  You might ask someone to attend a city council meeting, invite them to sign a pledge to opt out of using bottled water, or request that they join you in revitalizing a local mural. No matter what you’re asking about, there is no better way to get over your asking anxiety than to practice.</p>
       <p>So, go ahead and ask for something!</p>"
    else
      "<p>#{answer_response(last_question.answer)}</p>"
    end
  end

  private

  def answer_response(answer)
    if(answer.short_answer == 'yes')
      return 'Boom! In the wise words of Maya Angelou, "Ask for what you want and be prepared to get it."<br/>Now that you you’ve gotten all the way to "yes", why not try another ask and see what happens?'
    elsif(answer.short_answer == 'no')
      return "That wasn’t so bad was it? Someone told you \"no\" and you survived. You may not have gotten the response you hoped for but you did a brave thing just by asking. Keep on asking. Why not build on that bravery and give another ask a try?  "
    elsif(answer.short_answer == 'maybe')
      return "You’re on your way! As they say on House of Cards, \"You can't turn a 'no' into a 'yes' without a 'maybe' first.\" Give a little more info, follow up, and see where it takes you!"
    end
  end
end