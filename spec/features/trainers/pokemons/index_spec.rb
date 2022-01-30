require 'rails_helper'

describe 'Trainer pokemons index' do
  before do
    @red = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)

    @charizard = @red.pokemons.create!(name: "Charizard", hp: 200, in_battle: false)
    @torchic = @red.pokemons.create!(name: "Torchic", hp: 40, in_battle: false)

    @blue = Trainer.create!(name: "Blue", age: 11, certified: false)

    @squirtle = @blue.pokemons.create!(name: "Squirtle", hp: 60, in_battle: false)
    @piplup = @blue.pokemons.create!(name: "Piplup", hp: 75, in_battle: false)
  end

  it 'displays names and attributes of pokemons that belong to that trainer' do
    # we are expecting to see red's fire type pokemon, but not blue's water types.
    visit "/trainers/#{@red.id}/pokemons"

    expect(page).to have_content("#{@red.name}'s Pokémon")
    
    expect(page).to have_content("Name: #{@charizard.name}")
    expect(page).to have_content("hp: #{@charizard.hp}")
    expect(page).to have_content("In battle? #{@charizard.in_battle}")

    expect(page).to have_content("Name: #{@torchic.name}")
    expect(page).to have_content("hp: #{@torchic.hp}")
    expect(page).to have_content("In battle? #{@torchic.in_battle}")
  end

  it 'does not display pokemon belonging to a different trainer' do
    visit "/trainers/#{@red.id}/pokemons"

    expect(page).not_to have_content(@squirtle.name)
    expect(page).not_to have_content(@squirtle.hp)
    expect(page).not_to have_content(@piplip.name)
    expect(page).not_to have_content(@piplip.hp)
  end
end
