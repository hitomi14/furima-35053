class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_one :purchase


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping_cost
  belongs_to :area
  belongs_to :shipping_days


  with_options presence: true do
    validates :name
    validates :description
    validates :image
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: 'Out of setting range'}
  end

  with_options presence: true, numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :shipping_cost_id
    validates :area_id
    validates :shipping_days_id
  end
end
