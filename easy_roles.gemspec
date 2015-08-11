$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'easy_roles/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'easy_roles'
  s.version     = EasyRoles::VERSION
  s.authors     = ['Selva Chezhian', 'Jey Geethan', 'Saravanan Hari']
  s.email       = %w(selvachezhian.labam@gmail.com geetan123321@gmail.com sarhari@gmail.com)
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of EasyRoles.'
  s.description = 'TODO: Description of EasyRoles.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2.0'
end
