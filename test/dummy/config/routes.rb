Rails.application.routes.draw do
  mount ActiveAdmin::Tinymce::Engine => "/tinymce"
end
