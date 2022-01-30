require 'rails_helper'

describe 'trainer index' do
  before do
    @ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    @blue = Trainer.create!(name: "Blue", age: 11, certified: false)
    @red = Trainer.create!(name: "Red", age: 12, certified: false)
  end

  it 'displays the name of each trainer' do
    visit "/trainers"

    expect(page).to have_content(@ash.name)
    expect(page).to have_content(@blue.name)
    expect(page).to have_content(@red.name)
  end
end
