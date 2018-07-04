require './lib/card_class.rb'

class Deck

  def initialize(array)
    @cards = array
  end

  def cards
    @cards
  end

  def count
    @cards.count
  end
end
