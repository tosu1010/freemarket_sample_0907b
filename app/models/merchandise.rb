class Merchandise < ApplicationRecord
  has_one :balance, dependent: :destroy
  has_one :exhibit, dependent: :destroy
  has_one :purchase, dependent: :destroy
  has_many :to_does, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :dealed_comment, dependent: :destroy
  belongs_to :delivery
  belongs_to :brand
  belongs_to :category

  def previous
    previous_record = Merchandise.where("id < ?", self.id).order("id DESC").first
    previous_record.present? ? previous_record : 0
  end

  def next
    next_record = Merchandise.where("id > ?", self.id).order("id ASC").first
    next_record.present? ? next_record : 0
  end

  def liked_by(user_id)
    likes.where(user_id: user_id).exists?
  end

  # 引数に渡した商品のブランド・カテゴリの他の商品を配列itemsに格納して渡す。
  # 現在表示している商品は省き、最大6件まで表示する。
  def self.brand_new_items(merchandise)
    items = []
    self.where(category_id: merchandise.category_id, brand_id: merchandise.brand_id).limit(7).order("created_at DESC").each_with_index do |item, i|
      if item.id == merchandise.id
        next
      elsif i < 7
        items << item
      end
    end
    items
  end


  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :condition
end
