class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.integer :source_id
      t.integer :destination_id
      t.datetime :executed_at
      t.references :category

      t.timestamps
    end
    add_index :transactions, :category_id
    add_index :transactions, :source_id
    add_index :transactions, :destination_id
  end
end
