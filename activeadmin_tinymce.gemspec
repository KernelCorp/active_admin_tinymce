$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_admin_tinymce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_tinymce"
  s.version     = ActiveAdminTinymce::VERSION
  s.authors     = ["Kerweb development team"]
  s.email       = ["mk@kernel-corp.com"]
  s.homepage    = "https://github.com/KernelCorp/active_admin_tinymce"
  s.summary     = "Summary of ActiveAdminTinymce."
  s.description = "Description of ActiveAdminTinymce."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

end
