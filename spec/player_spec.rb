require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Player do
    before(:each) do
        @card1 = Card.new(:diamond, 'Queen', 11)
        @card2 = Card.new(:spade, '3', 10)
        @card3 = Card.new(:heart, 'Ace', 14)
    
        @cards = [@card1, @card2, @card3]
    
        @deck = Deck.new(@cards)
        @player = Player.new('Clarisa', @deck)
    end

    it 'exists' do
        expect(@player).to be_an_instance_of(Player)
    end

    it 'has attributes' do
        expect(@player.name).to eq('Clarisa')
        expect(@player.deck).to eq(@deck)
    end

    it 'can lose the game when they run out of cards' do
        expect(@player.has_lost?).to eq(false)
        cards = []
        @deck = Deck.new(cards)
        @player = Player.new('Clarisa', @deck)
        expect(@player.has_lost?).to eq(true)
    end
end