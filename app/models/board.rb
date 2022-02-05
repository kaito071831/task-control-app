class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belong_to :boardgroup
end
