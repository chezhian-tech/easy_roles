module EasyRoles
  class User < ActiveRecord::Base
    self.table_name = 'users'

    has_one :super_admin
    has_many :user_role_groups
    has_many :roles, through: :user_role_groups
    has_many :role_permissions, through: :roles
    has_many :permissions, through: :role_permissions
    has_many :sub_permissions, through: :permissions

    def authorize_to_perform_action?(controller, action, group_id = nil)
      if active_super_admin?
        true
      else
        group_id ||= Group.first.try(:id)
        raise EasyRoles::CustomExceptions::GroupNotFound unless group_id
        eligible_actions_by_group(group_id).pluck(:controller, :action).include?([controller, action])        
      end
    end

    def active_super_admin?
      # super_admin.try(:active)
      false
    end

    protected

    def eligible_actions_by_group(group_id)
      sub_permissions.where('user_role_groups.group_id = ?', group_id)
    end
  end
end
