require_dependency 'application_controller'

module ActiveAdmin
  module Tinymce
    class ModalController < ApplicationController
      def index
        model = ActiveAdmin::Tinymce.model_class
        @images = model.all
        render partial: 'active_admin/tinymce/modal/modal'
      end
    end
  end
end
