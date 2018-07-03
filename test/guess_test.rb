require './lib/card_class'
require './lib/guess_class'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


 class GuessTest < Minitest::Test
   def test_it_exists
     card_1 = Card.new("Ace", "Spades")
     guess_1 = Guess.new("Ace of Spades", card_1)
     assert_instance_of Guess, guess_1
   end
   def test_it_holds_card
    card = Card.new("Queen", "Hearts")
    guess = Guess.new("Queen of Hearts", card)
    assert_equal card, guess.card
  end
   def test_correct?
     card_4 = Card.new("King", "Diamonds")
     guess = Guess.new("King of Diamonds",card_4)
     assert_equal true , guess.correct?
   end

   def test_it_can_be_incorrect
     card= Card.new("Queen", "Hearts")
     guess = Guess.new("Ace of Spades",card)
     assert_equal false , guess.correct?
   end
   def test_give_feedback
     card_5 = Card.new("Ace","Hearts")
     guess = Guess.new("Ace of Hearts", card_5)
     #binding.pry
     assert_equal "Correct!", guess.give_feedback
   end
  def test_it_can_tell_you_incorrect
    card_5 = Card.new("Ace","Hearts")
    guess = Guess.new("King of Hearts", card_5)
    #binding.pry
    assert_equal "Incorrect!", guess.give_feedback
  end
 end
