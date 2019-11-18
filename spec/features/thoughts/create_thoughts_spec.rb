require 'rails_helper'

RSpec.feature 'Thoughts', type: :feature do
  before do
    @user = create(:user);login_as(@user)
    @thought = create(:thought, user_id: @user.id)
  end
  scenario 'user create thought' do
    visit root_path

    expect(page).to have_content(@thought.body)
  end
end
