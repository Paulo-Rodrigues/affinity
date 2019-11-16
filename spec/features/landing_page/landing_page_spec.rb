require 'rails_helper'

RSpec.feature 'Landing Page', type: :feature do
  scenario 'returns status ok 200' do
    visit root_path

    expect(page).to have_http_status(200)
  end
end
