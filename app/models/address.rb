class Address < ApplicationRecord
  #validation制御回避のため、user_idに対してoptional: trueをつける
  belongs_to :user , optional: true

  def get_full_address
    self.prefecture.name + self.city + self.number
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  # step3入力項目
  validates :last_name,               presence: true
  validates :first_name,              presence: true
  validates :last_name_kana,          presence: true
  validates :first_name_kana,         presence: true
  validates :postal_code,             presence: true, format: { with: /\A\d{3}[-]\d{4}\z/ }
  validates :prefecture_id,           presence: true
  validates :city,                    presence: true
  validates :number,                  presence: true
  validates :phone_number,            length: {minimum: 10, maximum: 11}, format: { with: /\A\d{0,11}\z/ }

end
