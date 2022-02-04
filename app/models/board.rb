class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :groups, dependent: :destroy
end
