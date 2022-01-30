require 'rails_helper'

describe 'trainer index' do
  before do
    @ash = Trainer.find_or_create_by!(name: "Ash Ketchum", age: 10, certified: false)
    @blue = Trainer.find_or_create_by!(name: "Blue", age: 11, certified: false)
    @red = Trainer.find_or_create_by!(name: "Red", age: 12, certified: false)
  end

  it 'displays the name of each trainer' do
    visit "/trainers"

    expect(page).to have_content(@ash.name)
    expect(page).to have_content(@blue.name)
    expect(page).to have_content(@red.name)
  end

  it 'sorts trainers by most recently created' do

    expect(@ash).to appear_before(@blue)
  end
end
