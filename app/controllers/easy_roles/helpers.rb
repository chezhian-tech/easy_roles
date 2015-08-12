module EasyRoles
  module Helpers

    module ClassMethods
      def authorize_user!
        if current_user.blank?
          raise EasyRoles::NotAuthorizedUser
        else
          unless current_user.authorize_to_perform_action?(params[:controller], params[:action], params[:group])
            raise EasyRoles::NotAuthorizedUser
          end
        end
      end
    end
  end
end