require 'rails_helper'

describe 'trainer show page' do
  before do
    @ash = Trainer.create!(name: "Ash Ketchum", age: 10, certified: false)
    visit "/trainers/#{@ash.id}"
  end

  it 'displays attributes for one trainer' do
    expect(page).to have_content("Name: #{@ash.name}")
    expect(page).to have_content("Age: #{@ash.age}")
    expect(page).to have_content("Certified? #{@ash.certified}")
  end
end
