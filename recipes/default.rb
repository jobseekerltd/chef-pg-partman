#
# Cookbook Name:: chef-pg-partman
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#

bash 'install' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    git clone https://github.com/keithf4/pg_partman.git
    cd pg_partman
    make
    make install
  EOH
end
