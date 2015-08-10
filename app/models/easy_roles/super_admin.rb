module EasyRoles
  class SuperAdmin < ActiveRecord::Base
  	belongs_to :user
  end
end
