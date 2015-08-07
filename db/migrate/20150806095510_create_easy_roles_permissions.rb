class CreateEasyRolesPermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_permissions do |t|
      t.integer :role_id
      t.integer :permission_id
      t.timestamps null: false
    end
    add_index :easy_roles_permissions, :role_id
    add_index :easy_roles_permissions, :permission_id
  end
end
