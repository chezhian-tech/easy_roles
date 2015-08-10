class CreateEasyRolesRolePermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_role_permissions do |t|
      t.string :name
      t.integer :role_id
      t.integer :permission_id
      t.timestamps null: false
    end
    add_index :easy_roles_role_permissions, :role_id
    add_index :easy_roles_role_permissions, :permission_id
  end
end
