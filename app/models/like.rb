class Like < ApplicationRecord
  belongs_to :user
  belongs_to :merchandise

  # 一つの商品に対して一回のいいねしかできないようにする
  validates :user_id, uniqueness: {scope: :merchandise_id}

  # valueは 1 のみしか許可しない
  validates :value, numericality: {equal_to: 1}
end
