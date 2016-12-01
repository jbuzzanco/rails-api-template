class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quoteText
      t.string :author
      t.string :user

      t.timestamps null: false
    end
  end
end
