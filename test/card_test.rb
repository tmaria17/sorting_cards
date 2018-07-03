require './lib/card_class.rb'
require 'minitest/autorun'
require 'minitest/pride'

 class CardTest < Minitest::Test
   def test_it_exists
     sorting_card = Card.new("Ace","Spades")
     assert_instance_of Card, sorting_card
   end


end
