class Page < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy,through: :comments
  has_many :comments
end
