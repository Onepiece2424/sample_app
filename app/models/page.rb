class Page < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy,through: :comments
  has_many :comments
end
