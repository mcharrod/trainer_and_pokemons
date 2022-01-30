require 'rails_helper'

describe 'pokemon show page' do
  before do
    @ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)

    @pikachu = @ash.pokemons.create!(name: "Pikachu", hp: 50, in_battle: false)
    @charizard = @ash.pokemons.create!(name: "Charizard", hp: 200, in_battle: false)
  end

  it 'shows attributes for one pokemon' do
    visit "/pokemons/#{@pikachu.id}"

    expect(page).to have_content("Name: #{@pikachu.name}")
    expect(page).to have_content("hp: #{@pikachu.hp}")
    expect(page).to have_content("In battle? #{@pikachu.in_battle}")
  end

  it 'does not show other pokemon information' do
    visit "/pokemons/#{@pikachu.id}"

    expect(page).not_to have_content(@charizard.name)
    expect(page).not_to have_content(@charizard.hp)
    expect(page).not_to have_content(@charizard.in_battle)
  end
end
