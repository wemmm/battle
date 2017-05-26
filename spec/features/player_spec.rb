require 'player'

describe Player do
  subject(:dog) { described_class.new ("Dog")}

  describe '#name' do
    xit 'returns its name' do
    # name_double = double(:battle)
    # allow(name_double).to receive(:player_1_name).and_return("cat")
    # name1 = Player.new(name_double)
      expect(dog.name).to eq "Dog"
    end
  end
end
