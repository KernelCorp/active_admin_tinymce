Rails.application.routes.draw do
  mount ActiveAdmin::Tinymce::Engine => "active_admin/tinymce"
end
