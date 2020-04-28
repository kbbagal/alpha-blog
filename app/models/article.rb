class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 125}
  validates :description, presence: true, length: {minimum: 6, maximum: 200}

  belongs_to :user
end