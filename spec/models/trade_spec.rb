require 'rails_helper'

describe Trade do
  describe '#create' do
    it 'is valid when every values are properly filled in(全ての値を正しく埋めたら正当になる)' do
      trade = FactoryBot.build(:trade)
      expect(trade).to be_valid
    end

    it 'is invalid without item(商品無しでは不正になる)' do
      trade = FactoryBot.build(:trade, item: nil)
      trade.valid?
      expect(trade.errors[:item]).to include("を入力してください")
    end

    it 'is invalid without parcaser_user(購入者無しでは不正になる)' do
      trade = FactoryBot.build(:trade, parcaser_user: nil)
      trade.valid?
      expect(trade.errors[:parcaser_user]).to include("を入力してください")
    end

    it 'is invalid without saler_user(売却者無しでは不正になる)' do
      trade = FactoryBot.build(:trade, saler_user: nil)
      trade.valid?
      expect(trade.errors[:saler_user]).to include("を入力してください")
    end


  end
end
