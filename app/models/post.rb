class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true
validates :name, presence: true
validates :content, presence: true
validates :title, :uniqueness => true
end
