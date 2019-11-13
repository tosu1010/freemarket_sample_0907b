class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :merchandise

  validates :comment, presence: true

  def calc_date
    ago_hour = ((Time.now - self.created_at.in_time_zone('Tokyo'))/3600).floor
    if ago_hour < 24
      "#{ago_hour}時間前"
    else
      "#{ago_hour/24}日前"
    end
  end
end
