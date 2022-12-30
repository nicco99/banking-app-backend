class RenameType < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :type, :name
  end
end
