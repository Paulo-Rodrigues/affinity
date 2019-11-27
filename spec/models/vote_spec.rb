require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'respond_to' do
    it {is_expected.to respond_to(:up)}
    it {is_expected.to respond_to(:down)}
  end

  context 'associations' do
    it {is_expected.to belong_to(:user)}
    it {is_expected.to belong_to(:votable)}
  end
end
