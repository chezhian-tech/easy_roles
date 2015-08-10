module EasyRoles
  class ApplicationController < ActionController::Base

    before_action :authorize_user!

    def authorize_user!
      if current_user.blank?
        raise CustomExceptions::NotAuthorizedUser
      else
        unless current_user.authorize_to_perform_action?(params[:controller], params[:action], params[:group])
          raise CustomExceptions::NotAuthorizedUser
        end
      end
    end

  end
end
