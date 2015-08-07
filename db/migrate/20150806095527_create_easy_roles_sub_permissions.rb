class CreateEasyRolesSubPermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_sub_permissions do |t|
      t.string :controller
      t.string :action
      t.timestamps null: false
    end
    add_index :easy_roles_sub_permissions, :controller
    add_index :easy_roles_sub_permissions, :action
  end
end
