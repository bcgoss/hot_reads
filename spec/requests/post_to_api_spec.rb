require 'rails_helper'

RSpec.describe 'API Controller' do
  it 'accepts URLs in post requests' do
    headers = { "ACCEPT" => "application/json" }
    expect {
      post '/api/v1/links',
        params: { link: {url: 'http://www.example.com'}},
        headers: headers,
        as: :json
    }.to change { Link.count }.by(1)
    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end
end
