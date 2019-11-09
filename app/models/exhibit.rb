class Exhibit < ApplicationRecord
  has_many :to_does, dependent: :destroy
  has_many :exhibit_images, dependent: :destroy
  belongs_to :user
  belongs_to :merchandise

  # 引数に渡した商品の出品者の他の商品を配列itemsに格納して渡す。
  # 現在表示している商品は省き、最大6件まで表示する。
  def self.user_new_items(merchandise)
    items = []
    self.where(user_id: merchandise.exhibit.user_id).limit(7).order("created_at DESC").each_with_index do |item, i|
      if item.merchandise.id == merchandise.id
        next
      elsif i < 7
        items << item
      end
    end
    items
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :size
end
