require 'player'
require 'app'

describe Player do
  subject(:name) { described_class.new }
  it 'returns its name' do
    name_double = double(:battle)
    allow(name_double).to receive(:player_1_name).and_return("cat")
    name1 = Player.new(name_double)
    expect(name.gives_name).to eq "cat"
  end
end
