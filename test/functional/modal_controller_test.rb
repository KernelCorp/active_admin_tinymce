require 'test_helper'

module ActiveAdmin
  module Tinymce
    class ModalControllerTest < ActionController::TestCase
      test "should get index" do
        get :index
        assert_response :success
      end
    end
  end
end