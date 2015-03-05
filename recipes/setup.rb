# https://github.com/sstephenson/ruby-build/wiki#build-failure-of-fiddle-with-ruby-220
case node["platform"]
  when "ubuntu"
    package "libffi-dev" do
      action :install
    end
  when "centos", "amazon", "fedora"
    package "libffi-devel" do
      action :install
    end
end

include_recipe 'ruby-env::setup_ruby_rbenv'