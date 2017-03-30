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
end
