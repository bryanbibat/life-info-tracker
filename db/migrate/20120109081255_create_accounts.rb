class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :description
      t.decimal :initial_value

      t.timestamps
    end
  end
end
