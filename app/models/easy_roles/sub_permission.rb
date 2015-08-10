module EasyRoles
  class SubPermission < ActiveRecord::Base
  	belongs_to :permission
  end
end
