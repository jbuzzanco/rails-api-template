class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
