class CreateEasyRolesUserRoleGroups < ActiveRecord::Migration
  def change
    create_table :easy_roles_user_role_groups do |t|
      t.integer :user_id
      t.integer :role_id
      t.integer :group_id
      t.timestamps null: false
    end
  end
end
