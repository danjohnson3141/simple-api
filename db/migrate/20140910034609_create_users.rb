class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.string :email, limit: 100
      t.integer :created_by
      t.integer :updated_by

      t.foreign_key :users, column: 'updated_by'
      t.foreign_key :users, column: 'created_by'

      t.timestamps
    end
    add_index :users, :created_by
    add_index :users, :updated_by
  end
end