class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :isDeparture, presence: true

  mount_uploader :task_image, TaskImageUploader
end
