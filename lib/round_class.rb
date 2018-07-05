require './lib/card_class.rb'
require './lib/guess_class.rb'
require './lib/deck_class.rb'
require 'pry'
class Round
attr_reader :deck,
            :guesses
            :number_correct


  def initialize(deck)
    @deck = deck
    @guesses = [ ]
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(guess_values)
    @guesses << guess_values
    guess = Guess.new("#{guess_values[:value]} of #{guess_values[:suit]}", current_card)
  end

  #def number_correct
      # Here I would use .map to go through the guesses array
      #and check if the guess was correct using the .correct? method I made
      #in the guess_class file. However I wasn't able to go this code working
      #because it didn't recognize the .correct? method.  Or maybe this isn't
      # the correct way to make this work?



    #To Do:
    #check require on files and check .correct? method in guess card_class
    #Implement a sorting method to sort through my card deck.

end
