require 'rails/generators'
module ActiveAdmin
  module Tinymce
    class InstallGenerator < Rails::Generators::Base
      argument :name, type: :string, default: ''
      argument :attachment, type: :string, default: ''
      source_root File.expand_path('../templates', __FILE__)

      def create_initializer
        template 'active_admin_tinymce.rb', 'config/initializers/active_admin_tinymce.rb'
      end

      def create_routes
        #uncoment it to pass tests
        create_file 'config/routes.rb' #if !File.exist?('config/routes.rb')
        inject_into_file 'config/routes.rb', 'ActiveAdmin.routes(self)', before: ''
        if !name.blank?
          insert_into_file 'config/routes.rb', "\n  mount ActiveAdmin::Tinymce::Engine => '/', as: 'admin_editor'",
                         after: 'ActiveAdmin.routes(self)'
        end
      end
    end
  end
end
