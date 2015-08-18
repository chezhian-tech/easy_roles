module EasyRoles
  class ApplicationController < ::ActionController::Base
    skip_before_action :authorize_user!

  end
end
