require 'test_helper'

module ActiveAdminTinymce
  class ModalControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  end
end