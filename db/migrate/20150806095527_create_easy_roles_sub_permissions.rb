class CreateEasyRolesSubPermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_sub_permissions do |t|

      t.timestamps null: false
    end
  end
end
