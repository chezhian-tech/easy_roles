class CreateEasyRolesSuperAdmins < ActiveRecord::Migration
  def change
    create_table :easy_roles_super_admins do |t|
      t.integer :user_id, index: true
      t.boolean :active
      t.timestamps null: false
    end
  end
end
