class SnsCredential < ApplicationRecord
  belongs_to :user

  def self.find_for_oauth_user(auth)
    SnsCredential.find_by(uid: auth.uid, provider: auth.provider)
  end

  def self.create_for_oauth_user(user, auth)
    SnsCredential.new(uid: auth["uid"], provider: auth["provider"], token: auth["credentials"]["token"], user_id: user.id)
  end
end
