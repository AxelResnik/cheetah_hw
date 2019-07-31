class Product < ApplicationRecord
  belongs_to :producer, optional: :true
end
