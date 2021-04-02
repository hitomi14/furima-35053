require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
    context '商品が出品できるとき' do
      it 'image、name、description、category_id、status_id、shipping_cost_id、area_id、shipping_days_id、priceがあれば出品できる' do
      end
      
    end

    context '商品の出品ができないとき' do

    end
  end
end
