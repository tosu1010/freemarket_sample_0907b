class Exhibit < ApplicationRecord
  has_many :to_does, dependent: :destroy
  has_many :exhibit_images, dependent: :destroy
  belongs_to :user
  belongs_to :merchandise

  # 引数に渡した商品の出品者の他の商品を配列itemsに格納して渡す。
  # 現在表示している商品は省き、最大6件まで表示する。
  def user_new_items
    items = []
    Exhibit.where(user_id: self.user_id).limit(7).order(created_at: "DESC").each do |item|
      if item.merchandise.id == self.id
        next
      elsif items.length < 6
        items << item
      else
        break
      end
    end
    items
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :size
end
