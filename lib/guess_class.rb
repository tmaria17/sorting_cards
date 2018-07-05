require './lib/card_class.rb'
class Guess

attr_reader :response, :card

  def initialize (response, card)
    @response = response
    @card = card
  end
  def response
    @response
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suit}"
      return true
    else
      return false
    end
  end

  def give_feedback
    if correct? == true
     "Correct!"
    else
     "Incorrect!"
    end
  end
end
