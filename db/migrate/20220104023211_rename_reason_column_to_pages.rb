class RenameReasonColumnToPages < ActiveRecord::Migration[5.2]
  def change
    rename_column :pages, :reason, :thinking
  end
end
