class AddUserIdToQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quoteText
      t.string :author
      t.integer :user_id
    end
  end
end
