class Item < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :file
  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "only alphanumeric" }, uniqueness: true
end
