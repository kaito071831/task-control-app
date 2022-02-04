class Status < ApplicationRecord
  has_many :tasks
  validates :status, uniqueness: true
end
