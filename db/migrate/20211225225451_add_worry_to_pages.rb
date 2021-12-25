class AddWorryToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :date, :date
    add_column :pages, :worry, :text
    add_column :pages, :reason, :text
    add_column :pages, :approach, :text
  end
end
