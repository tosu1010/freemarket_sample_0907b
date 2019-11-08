class Merchandise < ApplicationRecord
  has_one :balance, dependent: :destroy
  has_one :exhibit, dependent: :destroy
  has_one :purchases, dependent: :destroy
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


  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :condition
end
