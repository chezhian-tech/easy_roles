class CreateEasyRolesRoles < ActiveRecord::Migration
  def change
    create_table :easy_roles_roles do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
