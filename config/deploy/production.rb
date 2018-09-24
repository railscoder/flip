server "5.188.41.143", user: "deployer", roles: %w{app db web}, primary: true
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

role :app, %w{deployer@5.188.41.143}
role :web, %w{deployer@5.188.41.143}
role :db,  %w{deployer@5.188.41.143}

set :rails_env, :production

# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.


# Global options
# --------------
  set :ssh_options, {
    keys: %w(/Users/artem/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey password),
    port: 22  
  }
