module EasyRoles
  class Permission < ActiveRecord::Base
  	has_many :role_permissions
    has_many :sub_permissions
  end
end
