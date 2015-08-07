class CreateEasyRolesRolePermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_role_permissions do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
