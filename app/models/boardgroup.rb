class Boardgroup < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :users, through: :teams
  has_many :boards, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }    
end
