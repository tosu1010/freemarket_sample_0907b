class Address < ApplicationRecord
  belongs_to :user

  def get_full_address
    self.prefecture.name + self.city + self.number
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
