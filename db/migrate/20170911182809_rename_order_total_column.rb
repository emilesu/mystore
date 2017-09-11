class RenameOrderTotalColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :totle, :total
  end
end
