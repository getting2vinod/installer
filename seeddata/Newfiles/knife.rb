# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

systemhostname=`hostname -f`.chomp
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "catadmin"
client_key               "#{current_dir}/catadmin.pem"
validation_client_name   "phoenix-validator"
validation_key           "#{current_dir}/phoenix-validator.pem"
chef_server_url          "https://#{systemhostname}/organizations/phoenix"
cookbook_path            ["#{current_dir}/../cookbooks"]
