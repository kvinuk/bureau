module Bureau
  class InitGenerator < Rails::Generators::Base
    def create_initializer_file
      create_file "config/initializers/bureau.rb", ""
    end

    def add_gem_routes
      inject_into_file "config/routes.rb", "\n\tmount Bureau::Engine => \"/bureau\" \n", after: "Rails.application.routes.draw do"
    end
  end
end