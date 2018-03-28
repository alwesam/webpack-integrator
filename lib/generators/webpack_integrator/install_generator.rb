require 'rails/generators'
require 'rails/generators/base'

module WebpackIntegrator
  class InstallGenerator < Rails::Generators::Base
    source_root(File.expand_path("../templates", __FILE__))
    def copy_install_file
      files = %w[client/webpack.config.js
                 client/package.json
                 client/.babelrc
                 client/src/index.js
                 app/controllers/client_controller.rb
                 app/views/client/index.html.erb
                 Procfile.dev]
      files.each {|file| copy_file(file,file)}
    end
    def add_yarn_dependencies
      run "cd client && yarn add webpack webpack-cli babel-loader babel-preset-es2015"
    end
    def add_gems
      gem "foreman", group: :development
      run "bundle"
    end
    def add_client_route
      route "match '*path/', to: 'client#index', format: false, via: :get"
      route "root 'client#index'"
    end
    def add_public_webpack_dir_to_gitignore
      system 'echo "public/webpack" >> .gitignore'
    end
    def print_message
      puts "    ++++++++++++++++++++++++++++++++++++++"
      puts "    Thank you for using webpack_integrator!"
      puts "    Please add the following line to your app/views/layouts/application.html.erb header:"
      puts "    <%= javascript_include_tag '/webpack/index-bundle.js' %>"
      puts "    ++++++++++++++++++++++++++++++++++++++"
    end
  end
end
