require './lib/card'
require './lib/deck'


RSpec.describe Deck do
  before(:each) do
    card1 = Card.new(:diamond, 'Queen', 11)
    card2 = Card.new(:spade, '3', 10)
    card3 = Card.new(:heart, 'Ace', 14)

    @cards = [card1, card2, card3]

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
       expect(@deck.high_ranking_cards).to eq ([@cards[0], @cards[2]])
  end

  it "find high ranking cards" do
    expect(@deck.percent_high_ranking).to eq (66.67)
  end
end
