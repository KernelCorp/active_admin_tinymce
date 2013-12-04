require 'test_helper'

module ActiveAdminTinymce
  class ActiveAdminTinymceTest < ActiveSupport::TestCase
    test "setup" do
      ActiveAdminTinymce.setup do |config|
        config.model_class = String
      end
      assert_equal ActiveAdminTinymce.model_class, String
    end
  end
end