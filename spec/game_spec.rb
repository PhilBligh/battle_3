require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'allows you see to Player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'allows you see to Player 2' do
      expect(game.player_2).to eq player_2
    end
  end



end