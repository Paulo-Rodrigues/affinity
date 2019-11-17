require 'rails_helper'

RSpec.describe Thought, type: :model do
  context 'respond_to' do
    it {is_expected.to respond_to(:body)}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:body)}
    it {is_expected.to validate_length_of(:body).is_at_most(500)}
  end

  context 'associations' do
    it {is_expected.to belong_to(:user)}
  end
end
