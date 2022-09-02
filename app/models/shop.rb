class Shop < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_many :schedules
  accepts_nested_attributes_for :schedules, allow_destroy: true
end
