class Bookmark < ApplicationRecord
  validates :url, presence: true

  scope :ordered, -> { order(id: :desc) }
end
