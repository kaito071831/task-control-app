class Team < ApplicationRecord
  belong_to :user
  belong_to :boardgroup
end
