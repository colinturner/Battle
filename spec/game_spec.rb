require 'game'

describe Game do
  let(:player1) {double(:player)}
  let(:player2) {double(:player)}
  subject(:game) {described_class.new(player1, player2)}

  describe "#attack" do
    it "attacks other player" do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe "#initialize" do
    it "accepts two player instances" do
      expect(game.players).to eq ({player1: player1, player2: player2})
    end
  end

  describe "#switch_player" do
    it "switches turns" do
      game.switch_player
      game.switch_player
      game.switch_player
      expect(game.aggro_player).to eq player1
    end
  end
end
