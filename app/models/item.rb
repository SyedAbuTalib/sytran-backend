class Item < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :file
  validates :file, file_size: { less_than_or_equal_to: 10.megabytes }
  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "only alphanumeric" }, uniqueness: true
end
