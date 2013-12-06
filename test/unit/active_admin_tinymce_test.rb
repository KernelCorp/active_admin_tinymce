require 'test_helper'

module ActiveAdmin
  module Tinymce
    class ActiveAdminTinymceTest < ActiveSupport::TestCase
      test "setup" do
        ActiveAdmin::Tinymce.setup do |config|
          config.model_class = String
        end
        assert_equal ActiveAdmin::Tinymce.model_class, String
      end
    end
  end
end