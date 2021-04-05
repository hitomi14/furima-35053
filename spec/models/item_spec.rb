require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
    context '商品が出品できるとき' do
      it 'image、name、description、category_id、status_id、shipping_cost_id、area_id、shipping_days_id、priceがあれば出品できる' do
        expect(@item).to be_valid
      end
    end

    context '商品の出品ができないとき' do
      it 'imageが空では出品できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空では出品できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'descriptionが空では出品できない' do
        @item.description = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Description can't be blank")
      end

      it 'category_idが空では出品できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'category_idが1(---)のままでは出品できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'status_idが空では出品できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end

      it 'status_idが1(---)のままでは出品できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'shipping_cost_idが空では出品できない' do
        @item.shipping_cost_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping cost can't be blank")
      end

      it 'shipping_cost_idが1(---)のままでは出品できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'area_idが空では出品できない' do
        @item.area_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Area can't be blank")
      end

      it 'area_idが1(---)のままでは出品できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'shipping_days_idが空では出品できない' do
        @item.shipping_days_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping days can't be blank")
      end

      it 'shipping_days_idが1(---)のままでは出品できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end

      it 'priceが空では出品できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end

      it 'priceは半角数字でなければ出品できない' do
        @item.price = '１０００'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'priceは300~9999999の間でなければ出品できない（300以下の場合）' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'priceは300~9999999の間でなければ出品できない（9999999以上の場合）' do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'priceは全角文字では出品できない' do
        @item.price = 'あああ'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'priceは半角英数字混同では出品できない' do
        @item.price = 'abc1234'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'priceは半角英語では出品できない' do
        @item.price = 'aaaaaa'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Out of setting range")
      end

      it 'ユーザーが紐付いていないと出品できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end
    end
  end
end
