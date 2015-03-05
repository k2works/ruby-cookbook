# https://github.com/sstephenson/ruby-build/wiki#build-failure-of-fiddle-with-ruby-220
package "libffi-dev" do
  action :install
end

include_recipe 'ruby-env::setup_ruby_rbenv'