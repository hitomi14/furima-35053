require 'rails_helper'

RSpec.describe PurchaseDestination, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @purchase_destination = FactoryBot.build(:purchase_destination, user_id: user.id, item_id: item.id)
    sleep 0.1
  end

  context '内容に問題ない場合' do
    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@purchase_destination).to be_valid
    end
  end

  context '内容に問題がある場合' do
    it 'post_codeが空だと保存できないこと' do
      @purchase_destination.post_code = ''
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Post code can't be blank")
    end

    it 'post_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @purchase_destination.post_code = '1234567'
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Post code is invalid. Include hyphen(-)")
    end

    it 'area_idを選択していないと保存できないこと' do
      @purchase_destination.area_id = ''
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Area can't be blank")
    end

    it 'area_idが1(---)のままでは保存できないこと' do
      @purchase_destination.area_id = 1
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Area must be other than 1")
    end

    it 'cityが空だと保存できないこと' do
      @purchase_destination.city = ''
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("City can't be blank")
    end

    it 'addressが空だと保存できないこと' do
      @purchase_destination.address = ''
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Address can't be blank")
    end

    it 'building_nameは空でも保存できること' do
      @purchase_destination.building_name = ''
      expect(@purchase_destination).to be_valid
    end

    it 'phone_numberが空だと保存できないこと' do
      @purchase_destination.phone_number = ''
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Phone number can't be blank")
    end

    it 'phone_numberが12桁以上だと保存できないこと' do
      @purchase_destination.phone_number = 123456789101
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Phone number is invalid")
    end

    it 'phone_numberにハイフンがある場合は保存できない(090-1234-5678など)' do
      @purchase_destination.phone_number = 190-1234-5678
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Phone number is invalid")
    end

    it 'tokenが空では保存できないこと' do
      @purchase_destination.token = nil
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Token can't be blank")
    end

    it 'user_idがない場合は保存できない' do
      @purchase_destination.user_id = nil
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("User can't be blank")
    end

    it 'item_idがない場合は保存できない' do
      @purchase_destination.item_id = nil
      @purchase_destination.valid?
      expect(@purchase_destination.errors.full_messages).to include("Item can't be blank")
    end
  end
end
