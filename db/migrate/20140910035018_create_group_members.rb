class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.integer :created_by
      t.integer :updated_by

      t.foreign_key :users
      t.foreign_key :groups
      t.foreign_key :users, column: 'updated_by'
      t.foreign_key :users, column: 'created_by'

      t.timestamps
    end
    add_index :group_members, :created_by
    add_index :group_members, :updated_by
  end
end
