require_dependency 'easy_roles/application_controller'

module EasyRoles
  class RolesController < ApplicationController

    def index
      @roles = Role.page params[:page]
    end

    def new
      @role = Role.new
    end

    def create
      @role = Role.new(role_params)
      if @role.save
        redirect_to roles_path, notice: 'Role created Successfully'
      else
        render action: :new
      end
    end

    def edit
      @role = Role.find(params[:id])
    end

    def update
      @role = Role.find(params[:id])
      if @role.update_attributes(role_params)
        redirect_to roles_path, notice: 'Role updated Successfully'
      else
        render action: :edit
      end
    end

    private

    def role_params
      params.require(:role).permit(:name)
    end

  end
end
