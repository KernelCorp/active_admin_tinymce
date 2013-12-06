require 'active_admin/tinymce/engine'

module ActiveAdmin
  module Tinymce
    mattr_accessor :model_class

    def self.setup
      yield self
    end

  end
end
