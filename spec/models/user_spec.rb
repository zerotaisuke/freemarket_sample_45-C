require 'rails_helper'

describe User do
  describe '#create' do

    it "is valid when every values are properly filled in(プロフィールとユーザの全ての値を正しく埋めたら正当になる)" do
      profile = FactoryBot.build(:profile)
      expect(profile.user).to be_valid
    end

    it "is valid when every users values are properly filled in(ユーザーの全ての値を正しく埋めたら正当になる)" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it "is valid when every profiles values are properly filled in(プロフィールの全ての値を正しく埋めたら正当になる)" do
      profile = FactoryBot.build(:profile)
      expect(profile).to be_valid
    end

    it "is properly associated between user and profile(ユーザーとプロフィールが正しく紐付いている)" do
      profile = FactoryBot.build(:profile)
      expect(profile.user_id).to equal(profile.user.id)
    end

    it "is invalid without email(メアド無しでは不正になる)" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a nickname(ニックネーム無しでは不正になる)" do
      profile = FactoryBot.build(:profile, nickname: nil)
      profile.valid?
      expect(profile.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid with a registered email address" do
      user = FactoryBot.create(:user)
      another_user = FactoryBot.build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

  end
end
