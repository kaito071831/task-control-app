class Status < ApplicationRecord
  has_many :tasks
  validates :status, uniqueness: true, presence: true
end
