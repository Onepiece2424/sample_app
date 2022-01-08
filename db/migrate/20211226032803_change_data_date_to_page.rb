class ChangeDataDateToPage < ActiveRecord::Migration[5.2]
  def change
    change_column :pages, :date, :text
  end
end
