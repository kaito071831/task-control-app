class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :boardgroup

  validates :title, presence: true, length: { maximum: 50 } 
  validates :boardgroup_id, presence: true, numericality: true
end
