require 'test_helper'
require 'thor'
require 'generators/active_admin/tinymce/install/install_generator'

module Thor::Actions
end

class InstallGeneratorTest < Rails::Generators::TestCase
  #include Thor::Actions
  tests ActiveAdmin::Tinymce::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup do
    prepare_destination
  end


  test 'all files are properly created with model name' do
    run_generator %w(CustomImage attachment)

    assert_file 'config/initializers/active_admin_tinymce.rb', /config.model_class = CustomImage/
    match = /mount ActiveAdmin::Tinymce::Engine => '\/', as: 'admin_editor'/
    assert_file 'config/routes.rb', match
  end

  test 'all files are properly created without model name' do
    run_generator
    assert_file 'config/initializers/active_admin_tinymce.rb', /#config.model_class = Image/
    assert_file 'config/initializers/active_admin_tinymce.rb' do |file|
      match = /config.model_class = CustomImage/
      assert_not_match file, match
    end
    assert_file 'config/routes.rb' do |file|
      match = /mount ActiveAdmin::Tinymce::Engine => '\/', as: 'admin_editor'/
      assert_not_match file, match
    end
  end


end