puts "=" * 80
# copy wwwizer configuration files
cookbook_file "/etc/nginx/sites-available/wwwizer" do
  source "wwwizer"
  action :create
end

link "/etc/nginx/sites-enabled/wwwizer" do
  to "/etc/nginx/sites-available/wwwizer"
end