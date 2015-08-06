class CreateEasyRolesGroups < ActiveRecord::Migration
  def change
    create_table :easy_roles_groups do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
  end
end
