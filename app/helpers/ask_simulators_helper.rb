module AskSimulatorsHelper
  def get_instructions(last_question)
    if last_question.nil?
      "<p>Let’s face it: asking for help can be really hard. Whether you’re worried about coming across as needy or nervous that people will feel put out, there’s no shortage of cultural and personal challenges to asking others to help you out.  That being said, there is no getting around the fact that you don’t get what you don’t ask for.</p>
       <p>As we each work to strengthen our Citizen Muscles “asking” is a critical skill you’ve got to practice.  You might ask someone to attend a city council meeting, invite them to sign a pledge to opt out of using bottled water, or request that they join you in revitalizing a local mural. No matter what you’re asking about, there is no better way to get over your asking anxiety than to practice.</p>
       <p>So, go ahead and ask for something!</p>"
    else
      "<p>There's a question here. Let's put something in.</p>"
    end
  end
end