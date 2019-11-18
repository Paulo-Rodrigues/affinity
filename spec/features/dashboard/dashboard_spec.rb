require 'rails_helper'

RSpec.feature 'Dashboard', type: :feature do
  before do
    @user = create(:user);login_as(@user)
  end

  scenario 'signed user dashboard' do
    visit root_path

    expect(page).to have_content('dashboard')
  end
end
