require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "#is_password?" do
    it "verifies a password" do
      expect(user.is_password?("atleast6")).to be true
    end

    it "does NOT accept wrong pw" do
      expect(user.is_password?("nonope")).to be false
    end
  end

  describe "#reset_session_token!" do
    it "sets a token" do
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the set token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    it "returns user with corresponding credentials" do
      expect(User.find_by_credentials("admin@user.com", "password")).to eq(user)
    end

    it "returns nil for bad credentials" do
      expect(User.find_by_credentials("delete@user.com", "password")).to be_nil
    end
  end
end
