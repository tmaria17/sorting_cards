class Guess

attr_reader :response, :card

  def initialize (response, card)
    @response = response
    @card = card
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
#card_1 = Card.new("king","Hearts")
 #puts guess_1 = Guess.new("Ace of Spades", card_1)
#puts guess_1.correct?
