require 'rails_helper'

RSpec.describe User, type: :model do
  context 'respond_to' do
    it {is_expected.to respond_to(:username)}
    it {is_expected.to respond_to(:bio)}
    it {is_expected.to respond_to(:first_name)}
    it {is_expected.to respond_to(:last_name)}
  end
end
