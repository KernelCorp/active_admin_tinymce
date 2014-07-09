require 'active_admin/tinymce/engine'

module ActiveAdmin
  module Tinymce
    mattr_accessor :model_class

    mattr_accessor :attachment_attr_name
    @@attachment_attr_name = 'attachment'

    mattr_accessor :admin_namespace
    @@admin_namespace = 'admin'

    def self.setup
      yield self
    end
  end
end
