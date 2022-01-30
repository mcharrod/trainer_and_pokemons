require 'rails_helper'

describe Pokemon do
  it 'exists' do
    ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    pikachu = Pokemon.create!(name: "Pika", hp: 50, in_battle: false, trainer_id: ash.id)

    expect(pikachu).to be_a(Pokemon)
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :hp }
  end

  describe 'relationship' do
    it { should belong_to(:trainer) }
  end
end
