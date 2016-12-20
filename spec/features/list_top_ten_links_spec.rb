require 'rails_helper'

RSpec.describe 'Home page' do
  it 'lists the top ten links' do
    10.times do |n|
      (n+1).times {create :link, url: "http://www.example.com/#{n}"}
    end
    visit root_path

    expect(page).to have_content('http://www.example.com/', count: 10)
  end
end
