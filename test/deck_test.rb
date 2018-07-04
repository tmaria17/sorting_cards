require './lib/card_class'
require './lib/deck_class'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DeckTest < Minitest::Test
  def test_deck_knows_card
    card = Card.new("Queen", "Hearts")
    assert_instance_of Card, card
  end
  def test_deck_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1,card_2])
    #binding. pry
    assert_instance_of Deck, deck
  end
  def test_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1,card_2])
    assert_equal [card_1,card_2] , deck.cards
  end
  def test_that_it_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1,card_2])
    assert_equal 2 , deck.count
  end



end
