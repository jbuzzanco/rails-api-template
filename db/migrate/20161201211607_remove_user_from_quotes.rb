class RemoveUserFromQuotes < ActiveRecord::Migration
  def change
    remove_column :quotes, :user
  end
end
