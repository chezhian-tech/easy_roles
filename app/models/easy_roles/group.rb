module EasyRoles
  class Group < ActiveRecord::Base
  	has_many :user_role_groups
  end
end
