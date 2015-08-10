module EasyRoles
  class User < ActiveRecord::Base
    self.table_name = 'users'

    has_many :user_role_groups
    has_many :roles, through: :user_role_groups
    has_many :role_permissions, through: :roles
    has_many :permissions, through: :role_permissions
    has_many :sub_permissions, through: :permissions
  end
end
