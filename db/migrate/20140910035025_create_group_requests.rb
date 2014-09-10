class CreateGroupRequests < ActiveRecord::Migration
  def change
    create_table :group_requests do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.boolean :pre_auth
      t.boolean :approved

      t.foreign_key :users
      t.foreign_key :groups
      t.foreign_key :users, column: 'updated_by'
      t.foreign_key :users, column: 'created_by'

      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
    add_index :group_requests, :created_by
    add_index :group_requests, :updated_by
  end
end
