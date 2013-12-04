require "active_admin_tinymce/engine"

module ActiveAdminTinymce
  mattr_accessor :model_class

  def self.setup
    yield self
  end

end
