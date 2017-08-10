class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchased_products
  has_and_belongs_to_many :products, join_table: :purchased_products
end
