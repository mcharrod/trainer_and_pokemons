require 'rails_helper'

describe Trainer do
  it 'exists' do
    ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    expect(ash).to be_a(Trainer)
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_uniqueness_of :name}
  end

  describe 'relationship' do
    it { should have_many(:pokemons) }
  end
end
