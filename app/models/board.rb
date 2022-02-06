class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :boardgroup
end
