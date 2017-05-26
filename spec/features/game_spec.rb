require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new }

  it 'allows player 1 to attack player 2' do
    expect(player2).to receive(:damage)
    game.attack(player2)
  end

end
