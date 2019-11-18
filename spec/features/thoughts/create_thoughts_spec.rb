require 'rails_helper'

RSpec.feature 'Thoughts', type: :feature do
  before do
    @user = create(:user);login_as(@user)
  end
  scenario 'user create thought' do
    visit root_path

    click_link "New Thought"

    fill_in "Body", with: 'Some text'
    
    click_button "Create thought"

    expect(page).to have_content('Some text')

  end
end
