$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "teobit_mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "teobit_mailer"
  s.version     = TeobitMailer::VERSION
  s.authors     = ["Kirill Zaitsev"]
  s.email       = ["kirik910@gmail.com"]
  s.homepage    = "http://web.teobit.ru"
  s.summary     = "Mailer Wrapper"
  s.description = "Mailer Wrapper"
  s.license     = "MIT"

  s.add_dependency('sanitize', '>= 2.0')

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
