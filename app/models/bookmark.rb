class Bookmark < ApplicationRecord
  belongs_to :user

  validates :url, presence: true

  scope :ordered, -> { order(id: :desc) }
end
