require_dependency 'application_controller'

module ActiveAdminTinymce
  class ModalController < ApplicationController
    def index
      model = Object.const_get(config.model_class)
      @images = model.all
      render partial: 'active_admin_tinymce/modal/modal'
    end
  end
end
