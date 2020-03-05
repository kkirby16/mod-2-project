class User < ApplicationRecord
  has_many :orders
  #   validates :username, presence: true
  #   validates :username, uniqueness: true
end

#seed some data, call the info i want on it based on associations.

#call user.orders... call items.locations.
