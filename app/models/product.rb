class Product < ApplicationRecord
  has_one_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
  end
  belongs_to :category
end
