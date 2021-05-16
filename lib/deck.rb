class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    cards[index].rank

  end

  def high_ranking_cards(index)

      cards[index >= 11].rank











  end





end
