require_dependency 'application_controller'

module ActiveAdminTinymce
  class ModalController < ApplicationController
    def index
      model = ActiveAdminTinymce.model_class
      @images = model.all
      render partial: 'active_admin_tinymce/modal/modal'
    end
  end
end
