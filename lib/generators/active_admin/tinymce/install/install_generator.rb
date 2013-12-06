module ActiveAdmin
  module Tinymce
    class InstallGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_initializer
        template 'tinymce.rb', 'config/initializers/tinymce.rb'
      end

      def create_routes
        insert_into_file 'config/routes.rb', "\n  mount ActiveAdmin::Tinymce::Engine => '/', as: 'admin_editor'",
                         after: 'ActiveAdmin.routes(self)'
      end
    end
  end
end
