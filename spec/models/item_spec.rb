require 'rails_helper'

describe Item do
  describe '#create' do

    it 'is valid when every values are properly filled in(全ての値を正しく埋めたら正当になる)' do
      item = FactoryBot.build(:item)
      expect(item).to be_valid
    end

    it 'is invalid without status(商品状態無しでは不正になる)' do
      item = FactoryBot.build(:item, status: nil)
      item.valid?
      expect(item.errors[:status]).to include("を入力してください")
    end

    it 'is invalid without price(価格無しでは不正になる)' do
      item = FactoryBot.build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("は数値で入力してください")
    end

    it 'is invalid without delivery_charge_burden(配送料の負担無しでは不正になる)' do
      item = FactoryBot.build(:item, delivery_charge_burden: nil)
      item.valid?
      expect(item.errors[:delivery_charge_burden]).to include("を入力してください")
    end

    it 'is invalid without prefecture(都道府県無しでは不正になる)' do
      item = FactoryBot.build(:item, prefecture: nil)
      item.valid?
      expect(item.errors[:prefecture]).to include("を入力してください")
    end

    it 'is invalid without days_up_to_delivery(発送までの日時無しでは不正になる)' do
      item = FactoryBot.build(:item, days_up_to_delivery: nil)
      item.valid?
      expect(item.errors[:days_up_to_delivery]).to include("を入力してください")
    end

    it 'is invalid without description(商品説明無しでは不正になる)' do
      item = FactoryBot.build(:item, description: nil)
      item.valid?
      expect(item.errors[:description]).to include("を入力してください")
    end

  end
end
