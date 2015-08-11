module EasyRoles
  # module Controllers
  	module Helpers
  	  # extend ActiveSupport::Concern

  	  module ClassMethods
  	  	def authorize_user!
	      if current_user.blank?
	        raise EasyRoles::CustomExceptions::NotAuthorizedUser
	      else
	        unless current_user.authorize_to_perform_action?(params[:controller], params[:action], params[:group])
	          raise EasyRoles::CustomExceptions::NotAuthorizedUser
	        end
	      end
	    end
  	  end
  	end
  # end
end