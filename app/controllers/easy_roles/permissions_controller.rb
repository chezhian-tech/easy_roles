require_dependency "easy_roles/application_controller"

module EasyRoles
  class PermissionsController < ApplicationController

    def index
      @permissions = Permission.page params[:page]
    end

    def new

    end

    def show

    end

    def edit

    end

    def create

    end

    def update

    end

    private

    def permission_params

    end

  end
end
