require 'player'

describe Player do
  subject(:player1) {described_class.new(name)}
  let(:player2) {described_class.new(name)}
  let(:name) {double(:name)}
  let(:hp) {double(:hp)}

  it "returns the name of the player" do
    expect(player1.name).to eq name
  end

  it "returns the HP of the player" do
    expect(player1.hp).to eq Player::DEFAULT_HP
  end

describe "#receive_damage" do
  it "reduces the player hp" do
    player1.receive_damage
    expect(player1.hp).to eq Player::DEFAULT_HP - 10
  end
end
end
