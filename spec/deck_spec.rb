require './lib/card'
require './lib/deck'


RSpec.describe Deck do
  before(:each) do
    @card1 = Card.new(:diamond, 'Queen', 11)
    @card2 = Card.new(:spade, '3', 10)
    @card3 = Card.new(:heart, 'Ace', 14)

    @cards = [@card1, @card2, @card3]

    @deck = Deck.new(@cards)
  end

  it "exists" do
    expect(@deck).to be_an_instance_of(Deck)
  end

  it "shows the cards in the deck" do
    expect(@deck.cards).to eq(@cards)
  end

  it "find rank of card" do
      expect(@deck.rank_of_card_at(0)).to eq(11)
      expect(@deck.rank_of_card_at(2)).to eq(14)
  end

  it "find high ranking cards" do
       expect(@deck.high_ranking_cards).to eq ([@card1, @card3])
  end

  it "can find the percentage of the high ranking cards in the deck" do
    expect(@deck.percent_high_ranking).to eq (66.67)
  end

  it "can remove a card from the top of the deck and add a card to the bottom of the deck" do
    @deck.remove_card

    expect(@deck.cards).to eq([@card2, @card3])

    card4 = Card.new(:club, '5', 5)
    @deck.add_card(card4)
    
    expect(@deck.cards).to eq([@card2, @card3, card4])
    expect(@deck.high_ranking_cards).to eq([@card3])
    expect(@deck.percent_high_ranking).to eq(33.33)
  end
end
