ActiveAdminTinymce.setup do |config|
  config.model_class = <%= name.nil? ? Image : name%>
end