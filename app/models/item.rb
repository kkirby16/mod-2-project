class Item < ApplicationRecord
  has_many :item_locations #are these associations right?
  has_many :order_items #orderitems is the join
  has_many :orders, through: :order_items
  has_many :locations, through: :item_locations #what should syntax on itemlocations be here?
end
