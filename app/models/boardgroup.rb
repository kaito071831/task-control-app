class Boardgroup < ApplicationRecord
  has_many :teams
  has_many :boards, dependent: :destroy
end
