require 'tinymce-rails'

module ActiveAdmin
  module Tinymce
    class Engine < ::Rails::Engine
      isolate_namespace ActiveAdmin::Tinymce
    end
  end
end
