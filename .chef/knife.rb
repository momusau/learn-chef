
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mmusau24"
client_key               "#{current_dir}/mmusau24.pem"
chef_server_url          "https://api.chef.io/organizations/mibu"
cookbook_path            ["#{current_dir}/../cookbooks"]
