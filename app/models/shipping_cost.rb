class Shipping_cost < ActiveHash::Base

  include ActiveHash::Associations
  has_many :items
end