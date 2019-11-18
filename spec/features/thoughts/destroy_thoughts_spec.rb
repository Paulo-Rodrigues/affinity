require 'rails_helper'

RSpec.feature 'Destroy Thought', type: :feature do
  before do
    @user = create(:user);login_as(@user)
    @thought = create(:thought, user_id: @user.id)
  end

  scenario 'successfully delete' do
    visit thought_path(@thought)

    click_link "Delete"

    expect(page).to have_content('Deleted thought')
  end
end
