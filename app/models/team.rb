class Team < ApplicationRecord
  belongs_to :user
  belongs_to :boardgroup

  validates :user_id, presence: true, numericality: true
  validates :boardgroup_id, presence: true, numericality: true
end
