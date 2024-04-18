module Treasure_hoard
  Treasure = Data.define(:magic_item, :points)

  TREASURES = [
    Treasure.new('Mushroom', 15).freeze,
    Treasure.new('Poisoned pie', -15).freeze,
    Treasure.new('Bag of Coins', 100).freeze,
    Treasure.new('Potion', 110).freeze,
    Treasure.new('Shield', 125).freeze,
    Treasure.new('Bandana', 150).freeze,
    Treasure.new('Moon sword', 200).freeze
  ]

  def self.rand_treasure
    TREASURES.sample
  end
end
