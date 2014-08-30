require 'spec_helper'

describe User do

  describe "vota em categoria" do
    
  end

  describe "Validations" do
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:email) }
  end

  describe "Factory" do
    it { expect(build(:user)).to be_a User}
    it { expect(build(:user)).to be_valid}
  end

  describe "Callbacks" do
    describe "before_save" do

      it "generate a encrypted_password" do
        user = build(:user)
        user.password = "123456"
        expect { user.save!}.to change { user.encrypted_password }
        user.password = nil
        expect { user.save!}.to_not change { user.encrypted_password }
      end

      it "generate a api key" do
        user = build(:user)
        user.password = "123456"
        user.save
        expect(user.api_key.access_token).not_to be_nil
      end
    end
  end

  describe "#password_correct?" do

    it "Should return true if password is correct" do
      user = build(:user)
      user.password = "123456"
      user.save
      expect(user.password_correct?("123456")).to eq true
    end

    it "Should return false if password is incorrect" do
      user = build(:user)
      user.password = "12345"
      user.save
      expect(user.password_correct?("123456")).to eq false
    end

  end
end