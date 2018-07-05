require './lib/card_class'
require './lib/guess_class'
require './lib/deck_class'
require './lib/round_class'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoundTest < Minitest::Test
  def test_that_it_knows_about_cards
    card = Card.new("Queen", "Hearts")
    assert_instance_of Card, card
  end
  def test_that_it_knows_about_guess
    card_1 = Card.new("Ace", "Spades")
    guess_1 = Guess.new("Ace of Spades", card_1)
    assert_instance_of Guess, guess_1
  end
  def test_that_it_knows_about_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1,card_2])
    assert_instance_of Deck, deck
  end
  def test_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round_1 = Round.new(deck)
    assert_instance_of Round , round_1
  end
  def test_that_it_holds_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round_1 = Round.new(deck)
    assert_equal deck, round_1.deck
  end

  def test_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round_1 = Round.new(deck)
    assert_equal deck.cards.first, round_1.current_card
  end
  def test_record_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "Queen", suit: "Hearts"})
    assert_instance_of Guess , round.record_guess({value: "Queen", suit: "Hearts"})
  end
  def test_number_correct
    skip
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "3", suit: "Hearts"})
      assert_equal 1, round.number_correct
  end

end
