class Card
  #create a card class
attr_reader :value, :suit
#this gives the class Card two attributes (Value and Suit)

  def initialize (value, suit)
    @value = value
    @suit = suit
  end



end

# card_1 = Card.new("Ace", "Spades")
#
# puts card_1
