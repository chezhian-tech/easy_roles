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

  s.files      = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2.0'
  s.add_dependency 'slim-rails'
  s.add_dependency 'kaminari'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'turbolinks'
  s.add_dependency 'jquery-turbolinks'
  s.add_dependency 'less-rails'
  s.add_dependency 'twitter-bootstrap-rails'
  s.add_dependency 'coffee-rails', '~> 4.1.0'
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency 'bootstrap-sass', '~> 3.2.0'
  s.add_dependency 'autoprefixer-rails'
end
