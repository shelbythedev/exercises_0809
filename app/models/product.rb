class Product < ApplicationRecord
  has_many :purchased_products
  has_and_belongs_to_many :purchases, join_table: :purchased_products
end
