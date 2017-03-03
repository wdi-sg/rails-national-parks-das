class Park < ApplicationRecord
  validates_presence_of :name, :description, :picture
  validates :name, presence: true,
  length: {maximum: 10}
  validates :description, presence: true,
  length: {maximum: 10}
  validates :picture, presence: true
end
