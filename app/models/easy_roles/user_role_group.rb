module EasyRoles
  class UserRoleGroup < ActiveRecord::Base
  	belongs_to :user
    belongs_to :role
    belongs_to :group
  end
end
