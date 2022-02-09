class Boardgroup < ApplicationRecord
  has_many :teams, dependent: :destroy 
  has_many :boards, dependent: :destroy
end
