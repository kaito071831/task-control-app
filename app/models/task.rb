class Task < ApplicationRecord
  belongs_to :status
  belongs_to :board

  validates :title, presence: true, length: { maximum: 50 }
  validates :status_id, presence: true, numericality: true
  validates :board_id, presence: true, numericality: true
end
