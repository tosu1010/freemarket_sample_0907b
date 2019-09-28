class Category < ApplicationRecord
  has_many :merchandises
  has_ancestry
end
