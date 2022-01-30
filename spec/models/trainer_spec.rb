require 'rails_helper'

describe Trainer do
  it 'exists' do
    ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    expect(ash).to be_a(Trainer)
  end

  describe 'relationship' do
    it { should have_many(:pokemons) }
  end
end
