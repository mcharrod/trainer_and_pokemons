require 'rails_helper'

describe 'pokemon index' do
  before do
    @ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    @blue = Trainer.create!(name: "Blue", age: 11, certified: false)

    @pikachu = @ash.pokemons.create!(name: "Pikachu", hp: 50, in_battle: false)
    @squirtle = @blue.pokemons.create!(name: "Squirtle", hp: 35, in_battle: false)
  end

  it 'displays names and all attributes of each pokemon' do
    visit '/pokemons'

    expect(page).to have_content("Name: #{@pikachu.name}")
    expect(page).to have_content("hp: #{@pikachu.hp}")
    expect(page).to have_content("In battle? #{@pikachu.in_battle}")
    expect(page).to have_content("Name: #{@squirtle.name}")
    expect(page).to have_content("hp: #{@squirtle.hp}")
    expect(page).to have_content("In battle? #{@squirtle.in_battle}")
  end
end
