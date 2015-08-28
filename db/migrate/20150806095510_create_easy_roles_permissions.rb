class CreateEasyRolesPermissions < ActiveRecord::Migration
  def change
    create_table :easy_roles_permissions do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
  end
end
