require 'rails/generators/base'

module EasyRoles
  class InstallGenerator < Rails::Generators::Base

    def mount_easy_roles_engine
      inject_into_file 'config/routes.rb', after: "Rails.application.routes.draw do\n" do
        <<-'RUBY'
  mount EasyRoles::Engine => '/easy_roles', as: 'easy_roles'
        RUBY
      end
    end

    desc 'change User model\'s base class to engine\'s User model'
    def change_user_base_class
      gsub_file 'app/models/user.rb', 'class User < ActiveRecord::Base', 'class User < EasyRoles::User'
    end

    def include_helpers_to_application_controller
      inject_into_file 'app/controllers/application_controller.rb', after: "class ApplicationController < ActionController::Base\n" do
        <<-'RUBY'
  include EasyRoles::Helpers::ClassMethods
        RUBY
      end
    end

    def copy_easy_roles_migrations
      rake 'easy_roles:install:migrations'
    end

  end
end