class ChangeDataCommentToComment < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :comment, :string
  end
end
