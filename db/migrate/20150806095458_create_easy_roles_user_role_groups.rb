class CreateEasyRolesUserRoleGroups < ActiveRecord::Migration
  def change
    create_table :easy_roles_user_role_groups do |t|
      t.integer :user_id
      t.integer :role_id
      t.integer :group_id
      t.timestamps null: false
    end
    add_index :easy_roles_user_role_groups, :user_id
    add_index :easy_roles_user_role_groups, :role_id
    add_index :easy_roles_user_role_groups, :group_id
  end
end
