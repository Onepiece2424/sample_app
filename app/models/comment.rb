class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :page
end
