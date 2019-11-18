require 'rails_helper'

RSpec.feature 'UPDATE Thought' do
  before do
    @user = create(:user);login_as(@user)
    @thought = create(:thought, user_id: @user.id)
  end

  scenario 'updated' do
    visit thought_path(@thought)

    click_link "Edit Thought"

    fill_in "Body", with: "edited"

    click_button "Create thought"

    expect(page).to have_content('edited')
  end
end
