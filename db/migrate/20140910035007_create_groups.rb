class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, limit: 200
      t.text :description
      t.references :group_type, index: true
      t.integer :owner_user_id
      t.integer :created_by
      t.integer :updated_by

      t.foreign_key :group_types
      t.foreign_key :users, column: 'owner_user_id'
      t.foreign_key :users, column: 'updated_by'
      t.foreign_key :users, column: 'created_by'

      t.timestamps
    end
    add_index :groups, :owner_user_id
    add_index :groups, :created_by
    add_index :groups, :updated_by
  end
end
