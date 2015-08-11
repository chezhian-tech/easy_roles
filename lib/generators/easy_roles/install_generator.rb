require 'rails/generators/base'

#module Generators
  module EasyRoles
    class InstallGenerator < Rails::Generators::Base

      desc 'change User model\'s base class to engine\'s User model'
      def change_user_base_class
        gsub_file 'app/models/user.rb', 'class User < ActiveRecord::Base', 'class User < EasyRoles::User'
      end

    end
  end
#end