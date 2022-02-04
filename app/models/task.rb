class Task < ApplicationRecord
  belongs_to :status
  belongs_to :board
end
