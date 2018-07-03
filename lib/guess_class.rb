
class Guess

attr_reader :response, :card

  def initialize (response, card)
    @response = response
    @card = card
  end

  def correct?
    if response == "#{value} of #{suit}"
      puts  true
    else
      puts  false
  end

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect!"
    end
  end
end
end

# puts guess_1 = Guess.new("Ace of Spades", card_1)
# p guess_1.correct?
# p guess_1.feedback
