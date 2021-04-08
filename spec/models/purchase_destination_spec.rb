require 'rails_helper'

RSpec.describe PurchaseDestination, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @purchase_destination = FactoryBot.build(:purchase_destination, user_id: user.id, item_id: item.id)
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
      binding.pry
    end

    it 'post_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
    end

    it 'area_idを選択していないと保存できないこと' do
    end

    it 'cityが空だと保存できないこと' do
    end

    it 'addressが空だと保存できないこと' do
    end

    it 'building_nameは空でも保存できること' do
    end

    it 'phone_numberが空だと保存できないこと' do
    end

    it 'phone_numberが11桁以上では保存できないこと' do
    end
  end
end
