#
# Cookbook Name:: wwwizer
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

puts "=" * 80
# copy wwwizer configuration files
cookbook_file "/etc/nginx/sites-available/wwwizer" do
  source "wwwizer"
  action :create
end

link "/etc/nginx/sites-enabled/wwwizer" do
  to "/etc/nginx/sites-available/wwwizer"
end