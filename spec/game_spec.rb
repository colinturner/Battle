require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double(:player)}
  let(:player2) {double(:player)}

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
      allow(game).to receive(:players).and_return({player1: player1, player2: player2})
      game.aggro_player = game.players[:player1]
      game.switch_player
      expect(game.aggro_player).to eq game.players[:player2]
    end
  end
end
