class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :content, presence: true
  validates :title, length: { minimum: 5 }
  validates :title, length: { minimum: 10 }
end
