require 'rails_helper'

RSpec.describe 'Home page' do
  it 'lists the top ten links' do
    create :top_ten
    visit root_path

    expect(page).to have_content('Link', count: 10)
  end
end
