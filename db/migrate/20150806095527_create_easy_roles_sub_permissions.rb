class CreateEasyRolesSubPermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_sub_permissions do |t|
      t.string :controller
      t.string :action
      t.integer :permission_id
      t.timestamps null: false
    end
    add_index :easy_roles_sub_permissions, :permission_id
  end
end
