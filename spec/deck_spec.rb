require './lib/card'
require './lib/deck'


RSpec.describe Deck do
  it "exists" do

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    expect(deck).to be_an_instance_of(Deck)
  end

  it "shows the cards in the deck" do

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    expect(deck.cards).to eq(cards)


  end

  it "find rank of card" do

      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)

      cards = [card1, card2, card3]

      deck = Deck.new(cards)
      expect(deck.rank_of_card_at(0)).to eq(12)
      expect(deck.rank_of_card_at(2)).to eq(14)

  end

  it "find high ranking cards" do


        card1 = Card.new(:diamond, 'Queen', 11)
        card2 = Card.new(:spade, '3', 10)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.high_ranking_cards).to eq ([card1, card3])
  end

end
