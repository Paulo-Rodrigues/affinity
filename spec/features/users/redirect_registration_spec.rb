require 'rails_helper'

RSpec.feature 'Registered User redirect to' do
  scenario 'to profile' do
    visit root_path

    click_link "Sign up"

    fill_in "Email", with: 'test@test.com'
    fill_in "Password", with: 'password'
    fill_in "Password confirmation", with: 'password'

    click_button "Sign up"

    expect(page).to have_link("Edit Profile")
  end
end
