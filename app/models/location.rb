class Location < ApplicationRecord
  has_many :item_locations #are these right?
  has_many :items, through: :item_locations

  #maybe have user select their location on a page in a collection select drop down from a list of 8 faker locations that my restaurant is located in?
end
