include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'
include_recipe 'rbenv::rbenv_vars'

rbenv_ruby '2.1.3' do
  ruby_version '2.1.3'
  global true
end

