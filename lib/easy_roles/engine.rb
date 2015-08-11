module EasyRoles
  class Engine < ::Rails::Engine
    isolate_namespace EasyRoles
    config.autoload_paths += Dir["#{config.root}/lib/custom_exceptions/easy_roles"]
  end
end
