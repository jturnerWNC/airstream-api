class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :isDeparture, presence: true
end
