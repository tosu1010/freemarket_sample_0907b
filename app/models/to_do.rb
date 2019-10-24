class ToDo < ApplicationRecord
  belongs_to :user
  belongs_to :exhibit
  belongs_to :purchase
  belongs_to :merchandise
end
