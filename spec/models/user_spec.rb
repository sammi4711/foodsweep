require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe "invalid user" do
    let(:user_with_invalid_name) { build(:user, name: "") }
    let(:user_with_invalid_email) { build(:user, email: "") }
  end
end
