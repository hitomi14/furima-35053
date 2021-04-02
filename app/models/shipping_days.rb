class Shipping_days < ActiveHash::Base


  include ActiveHash::Associations
  has_many :items
end