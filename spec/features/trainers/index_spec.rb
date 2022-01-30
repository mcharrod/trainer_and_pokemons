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
    visit "/trainers"

    within('#trainers') do
      expect(@ash.name).to appear_before(@blue.name)
      expect(@blue.name).to appear_before(@red.name)
    end
  end

  it 'displays time created next to each trainer name' do
    visit "/trainers"

    within("#trainer_#{@ash.id}") do
      expect(page).to have_content(@ash.created_at)
    end
  end
end
