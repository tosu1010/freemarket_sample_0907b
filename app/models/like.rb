class Like < ApplicationRecord
  belongs_to :user
  belongs_to :merchandise

  # いいねをしていなければ、追加する。していたら削除する。
  def regist_like(user_id, merchandise_id)
    like = Like.find_by(user_id: user_id, merchandise_id: merchandise_id)
    unless like.present?
      Like.create(value: 1, user_id: user_id, merchandise_id: merchandise_id)
    else
      like.delete
    end
  end
end
